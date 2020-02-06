/*
 * This file is part of the CMaNGOS Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef SQLSTORAGE_H
#define SQLSTORAGE_H

#include "Common.h"
#include "Database/DatabaseEnv.h"
#include "DBCFileLoader.h"

class SQLStorageBase
{
        template<class DerivedLoader, class StorageClass> friend class SQLStorageLoaderBase;

    public:
        char const* GetTableName() const { return m_tableName; }
        char const* EntryFieldName() const { return m_entry_field; }

        FieldFormat GetDstFormat(uint32 idx) const { return (FieldFormat)m_dst_format[idx]; };
        char const* GetDstFormat() const { return m_dst_format; };
        FieldFormat GetSrcFormat(uint32 idx) const { return (FieldFormat)m_src_format[idx]; };
        char const* GetSrcFormat() const { return m_src_format; };

        uint32 GetMaxEntry() const { return m_maxEntry; };
        uint32 GetRecordCount() const { return m_recordCount; };

        template<typename T>
        class SQLSIterator
        {
                friend class SQLStorageBase;

            public:
                T const* getValue() const { return reinterpret_cast<T const*>(pointer); }

                void operator ++() { pointer += recordSize; }
                T const* operator *() const { return getValue(); }
                T const* operator ->() const { return getValue(); }
                bool operator <(SQLSIterator const& r) const { return pointer < r.pointer; }
                inline bool operator == (SQLSIterator const& r) const { return pointer == r.pointer; }
                inline bool operator != (SQLSIterator const& r) const { return !operator ==(r); }
                void operator =(SQLSIterator const& r) { pointer = r.pointer; recordSize = r.recordSize; }

            private:
                SQLSIterator(char* ptr, uint32 _recordSize) : pointer(ptr), recordSize(_recordSize) {}
                char* pointer;
                uint32 recordSize;
        };

        template<typename T>
        SQLSIterator<T> begin() const { return SQLSIterator<T>(m_data, m_recordSize); }
        template<typename T>
        SQLSIterator<T> end() const { return SQLSIterator<T>(m_data + m_recordCount * m_recordSize, m_recordSize); }

    protected:
        SQLStorageBase();
        virtual ~SQLStorageBase() { Free(); }

        void Initialize(char const* tableName, char const* entry_field, char const* src_format, char const* dst_format);

        uint32 GetDstFieldCount() const { return m_dstFieldCount; }
        uint32 GetSrcFieldCount() const { return m_srcFieldCount; }
        uint32 GetRecordSize() const { return m_recordSize; }

        virtual void prepareToLoad(uint32 maxRecordId, uint32 recordCount, uint32 recordSize);
        virtual void JustCreatedRecord(uint32 recordId, char* record) = 0;
        virtual void Free();

    private:
        char* createRecord(uint32 recordId);

        // Information about the table
        char const* m_tableName;
        char const* m_entry_field;
        char const* m_src_format;
        char const* m_dst_format;

        // Information about the records
        uint32 m_dstFieldCount;
        uint32 m_srcFieldCount;
        uint32 m_recordCount;
        uint32 m_maxEntry;
        uint32 m_recordSize;

        // Data Storage
        char* m_data;
};

class SQLStorage : public SQLStorageBase
{
        template<class DerivedLoader, class StorageClass> friend class SQLStorageLoaderBase;

    public:
        SQLStorage(char const* fmt, char const* _entry_field, char const* sqlname);

        SQLStorage(char const* src_fmt, char const* dst_fmt, char const* _entry_field, char const* sqlname);

        ~SQLStorage() override { Free(); }

        template<class T>
        T const* LookupEntry(uint32 id) const
        {
            if (id >= GetMaxEntry())
                return nullptr;
            return reinterpret_cast<T const*>(m_Index[id]);
        }

        void Load(bool error_at_empty = true);
        void LoadProgressive(uint32 wow_patch, std::string column_name = "patch", bool error_at_empty = true);

        void EraseEntry(uint32 id);

    protected:
        void prepareToLoad(uint32 maxRecordId, uint32 recordCount, uint32 recordSize) override;
        void JustCreatedRecord(uint32 recordId, char* record) override
        {
            m_Index[recordId] = record;
        }

        void Free() override;

    private:
        // Lookup access
        char** m_Index;
};

class SQLHashStorage : public SQLStorageBase
{
        template<class DerivedLoader, class StorageClass> friend class SQLStorageLoaderBase;

    public:
        SQLHashStorage(char const* fmt, char const* _entry_field, char const* sqlname);
        SQLHashStorage(char const* src_fmt, char const* dst_fmt, char const* _entry_field, char const* sqlname);

        ~SQLHashStorage() override { Free(); }

        template<class T>
        T const* LookupEntry(uint32 id) const
        {
            RecordMap::const_iterator itr = m_indexMap.find(id);
            if (itr != m_indexMap.end())
                return reinterpret_cast<T const*>(itr->second);
            return nullptr;
        }

        void Load();

        void EraseEntry(uint32 id);

    protected:
        void prepareToLoad(uint32 maxRecordId, uint32 recordCount, uint32 recordSize) override;
        void JustCreatedRecord(uint32 recordId, char* record) override
        {
            m_indexMap[recordId] = record;
        }

        void Free() override;

    private:
        typedef std::unordered_map<uint32 /*recordId*/, char* /*record*/> RecordMap;
        RecordMap m_indexMap;
};

class SQLMultiStorage : public SQLStorageBase
{
        template<class DerivedLoader, class StorageClass> friend class SQLStorageLoaderBase;
        template<typename T> friend class SQLMultiSIterator;
        template<typename T> friend class SQLMSIteratorBounds;

    private:
        typedef std::multimap<uint32 /*recordId*/, char* /*record*/> RecordMultiMap;

    public:
        SQLMultiStorage(char const* fmt, char const* _entry_field, char const* sqlname);
        SQLMultiStorage(char const* src_fmt, char const* dst_fmt, char const* _entry_field, char const* sqlname);

        ~SQLMultiStorage() override { Free(); }

        // forward declaration
        template<typename T> class SQLMSIteratorBounds;

        template<typename T>
        class SQLMultiSIterator
        {
                friend class SQLMultiStorage;
                friend class SQLMSIteratorBounds<T>;

            public:
                T const* getValue() const { return reinterpret_cast<T const*>(citerator->second); }
                uint32 getKey() const { return citerator->first; }

                void operator ++() { ++citerator; }
                T const* operator *() const { return getValue(); }
                T const* operator ->() const { return getValue(); }
                bool operator !=(SQLMultiSIterator const& r) const { return citerator != r.citerator; }
                bool operator ==(SQLMultiSIterator const& r) const { return citerator == r.citerator; }

            private:
                SQLMultiSIterator(RecordMultiMap::const_iterator _itr) : citerator(_itr) {}
                RecordMultiMap::const_iterator citerator;
        };

        template<typename T>
        class SQLMSIteratorBounds
        {
                friend class SQLMultiStorage;

            public:
                SQLMultiSIterator<T> const first;
                SQLMultiSIterator<T> const second;

            private:
                SQLMSIteratorBounds(std::pair<RecordMultiMap::const_iterator, RecordMultiMap::const_iterator> pair) : first(pair.first), second(pair.second) {}
        };

        template<typename T>
        SQLMSIteratorBounds<T> getBounds(uint32 key) const { return SQLMSIteratorBounds<T>(m_indexMultiMap.equal_range(key)); }

        void Load();

        void EraseEntry(uint32 id);

    protected:
        void prepareToLoad(uint32 maxRecordId, uint32 recordCount, uint32 recordSize) override;
        void JustCreatedRecord(uint32 recordId, char* record) override
        {
            m_indexMultiMap.insert(RecordMultiMap::value_type(recordId, record));
        }

        void Free() override;

    private:
        RecordMultiMap m_indexMultiMap;
};

template <class DerivedLoader, class StorageClass>
class SQLStorageLoaderBase
{
    public:
        void Load(StorageClass& storage, bool error_at_empty = true);
        void LoadProgressive(StorageClass& storage, uint32 wow_patch, std::string column_name = "patch", bool error_at_empty = true);

        template<class S, class D>
        void convert(uint32 field_pos, S src, D& dst);
        template<class S>
        void convert_to_bool(uint32 field_pos, S src, bool& dst);
        template<class S>
        void convert_to_str(uint32 field_pos, S src, char*& dst);
        template<class D>
        void convert_from_str(uint32 field_pos, char const* src, D& dst);
        void convert_str_to_bool(uint32 field_pos, char const* src, bool& dst);
        void convert_str_to_str(uint32 field_pos, char const* src, char*& dst);
        template<class S, class D>
        void default_fill(uint32 field_pos, S src, D& dst);
        void default_fill_to_str(uint32 field_pos, char const* src, char*& dst);

        // trap, no body
        template<class D>
        void convert_from_str(uint32 field_pos, char* src, D& dst);
        void convert_str_to_str(uint32 field_pos, char* src, char*& dst);

    private:
        template<class V>
        void storeValue(V value, StorageClass& store, char* record, uint32 field_pos, uint32& offset);
        void storeValue(char const* value, StorageClass& store, char* record, uint32 field_pos, uint32& offset);

        // trap, no body
        void storeValue(char* value, StorageClass& store, char* record, uint32 field_pos, uint32& offset);
};

class SQLStorageLoader : public SQLStorageLoaderBase<SQLStorageLoader, SQLStorage>
{
};

class SQLHashStorageLoader : public SQLStorageLoaderBase<SQLHashStorageLoader, SQLHashStorage>
{
};

class SQLMultiStorageLoader : public SQLStorageLoaderBase<SQLMultiStorageLoader, SQLMultiStorage>
{
};

#include "SQLStorageImpl.h"

#endif

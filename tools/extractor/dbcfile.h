/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
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

#ifndef DBCFILE_H
#define DBCFILE_H
#include <cassert>
#include <string>

class DBCFile
{
    public:
        DBCFile(const std::string& filename);
        ~DBCFile();

        // Open database. It must be openened before it can be used.
        bool open();

        // Database exceptions
        class Exception
        {
            public:
                Exception(const std::string& message): message(message)
                { }
                virtual ~Exception()
                { }
                const std::string& getMessage() {return message;}
            private:
                std::string message;
        };
        class NotFound: public Exception
        {
            public:
                NotFound(): Exception("Key was not found")
                { }
        };
        // Iteration over database
        class Iterator;
        class Record
        {
            public:
                float getFloat(size_t field) const
                {
                    assert(field < file.fieldCount);
                    return *reinterpret_cast<float*>(offset + field * 4);
                }
                unsigned int getUInt(size_t field) const
                {
                    assert(field < file.fieldCount);
                    return *reinterpret_cast<unsigned int*>(offset + field * 4);
                }
                int getInt(size_t field) const
                {
                    assert(field < file.fieldCount);
                    return *reinterpret_cast<int*>(offset + field * 4);
                }
                const char* getString(size_t field) const
                {
                    assert(field < file.fieldCount);
                    size_t stringOffset = getUInt(field);
                    assert(stringOffset < file.stringSize);
                    return reinterpret_cast<char*>(file.stringTable + stringOffset);
                }

            private:
                Record(DBCFile& file, unsigned char* offset): offset(offset), file(file) {}
                unsigned char* offset;
                DBCFile& file;

                friend class DBCFile;
                friend class DBCFile::Iterator;
        };
        /** Iterator that iterates over records
        */
        class Iterator
        {
            public:
                Iterator(DBCFile& file, unsigned char* offset):
                    record(file, offset) {}
                /// Advance (prefix only)
                Iterator& operator++()
                {
                    record.offset += record.file.recordSize;
                    return *this;
                }
                /// Return address of current instance
                Record const& operator*() const { return record; }
                const Record* operator->() const
                {
                    return &record;
                }
                /// Comparison
                bool operator==(const Iterator& b) const
                {
                    return record.offset == b.record.offset;
                }
                bool operator!=(const Iterator& b) const
                {
                    return record.offset != b.record.offset;
                }
            private:
                Record record;
        };

        // Get record by id
        Record getRecord(size_t id);
        /// Get begin iterator over records
        Iterator begin();
        /// Get begin iterator over records
        Iterator end();
        /// Trivial
        size_t getRecordCount() const { return recordCount;}
        size_t getFieldCount() const { return fieldCount; }
        size_t getMaxId();
    private:
        std::string filename;
        size_t recordSize;
        size_t recordCount;
        size_t fieldCount;
        size_t stringSize;
        unsigned char* data;
        unsigned char* stringTable;
};

#endif

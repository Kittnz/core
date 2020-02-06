/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2009-2011 MaNGOSZero <https://github.com/mangos/zero>
 * Copyright (C) 2011-2016 Nostalrius <https://nostalrius.org>
 * Copyright (C) 2016-2017 Elysium Project <https://github.com/elysium-project>
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

#ifndef _REFMANAGER_H
#define _REFMANAGER_H

//=====================================================

#include "Utilities/LinkedList.h"
#include "Utilities/LinkedReference/Reference.h"

template <class TO, class FROM>
class RefManager : public LinkedListHead
{
    public:

        typedef LinkedListHead::Iterator<Reference<TO, FROM> > iterator;
        RefManager() {}
        virtual ~RefManager() { clearReferences(); }

        Reference<TO, FROM>*       getFirst()       { return ((Reference<TO, FROM>      *) LinkedListHead::getFirst()); }
        Reference<TO, FROM> const* getFirst() const { return ((Reference<TO, FROM> const*) LinkedListHead::getFirst()); }
        Reference<TO, FROM>*       getLast()       { return ((Reference<TO, FROM>      *) LinkedListHead::getLast()); }
        Reference<TO, FROM> const* getLast() const { return ((Reference<TO, FROM> const*) LinkedListHead::getLast()); }

        iterator begin() { return iterator(getFirst()); }
        iterator end() { return iterator(nullptr); }
        iterator rbegin() { return iterator(getLast()); }
        iterator rend() { return iterator(nullptr); }

        void clearReferences()
        {
            LinkedListElement* ref;
            while ((ref = getFirst()) != nullptr)
            {
                ((Reference<TO, FROM>*) ref)->invalidate();
                ref->delink();                              // the delink might be already done by invalidate(), but doing it here again does not hurt and insures an empty list
            }
        }
};

//=====================================================

#endif

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

#ifndef _REFERENCE_H
#define _REFERENCE_H

#include "Utilities/LinkedList.h"

//=====================================================

template<class TO, class FROM>
class Reference : public LinkedListElement
{
    private:

        TO* iRefTo = nullptr;
        FROM* iRefFrom = nullptr;

    protected:

        // Tell our refTo (target) object that we have a link
        virtual void targetObjectBuildLink() = 0;

        // Tell our refTo (taget) object, that the link is cut
        virtual void targetObjectDestroyLink() = 0;

        // Tell our refFrom (source) object, that the link is cut (Target destroyed)
        virtual void sourceObjectDestroyLink() = 0;

    public:

        virtual ~Reference() {}

        // Create new link
        void link(TO* toObj, FROM* fromObj)
        {
            assert(fromObj);                                // fromObj MUST not be NULL
            if (isValid())
                unlink();

            if (toObj != nullptr)
            {
                iRefTo = toObj;
                iRefFrom = fromObj;
                targetObjectBuildLink();
            }
        }

        // We don't need the reference anymore. Call comes from the refFrom object
        // Tell our refTo object, that the link is cut
        void unlink()
        {
            targetObjectDestroyLink();
            delink();
            iRefTo = nullptr;
            iRefFrom = nullptr;
        }

        // Link is invalid due to destruction of referenced target object. Call comes from the refTo object
        // Tell our refFrom object, that the link is cut
        void invalidate()                                   // the iRefFrom MUST remain!!
        {
            sourceObjectDestroyLink();
            delink();
            iRefTo = nullptr;
        }

        bool isValid() const                                // Only check the iRefTo
        {
            return iRefTo != nullptr;
        }

        Reference<TO,FROM>      * next()       { return ((Reference<TO, FROM>      *) LinkedListElement::next()); }
        Reference<TO,FROM> const* next() const { return ((Reference<TO, FROM> const*) LinkedListElement::next()); }
        Reference<TO,FROM>      * prev()       { return ((Reference<TO, FROM>      *) LinkedListElement::prev()); }
        Reference<TO,FROM> const* prev() const { return ((Reference<TO, FROM> const*) LinkedListElement::prev()); }

        TO* operator->() const { return iRefTo; }
        TO* getTarget() const { return iRefTo; }

        FROM* getSource() const { return iRefFrom; }
};

//=====================================================

#endif

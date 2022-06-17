//
// Created by Caterina Giardi on 15/06/22.
//

#include "gtest/gtest.h"
#include "../Menu.h"

TEST(Menu, Constructor){
    Menu m;
    ASSERT_EQ(0, m.cv.getNumOfObservedcollection());
    ASSERT_EQ(0, m.getNumofCollections());
    ASSERT_EQ(0, m.getNumofNotes());
}
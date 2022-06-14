//
// Created by Caterina Giardi on 15/06/22.
//

#include "gtest/gtest.h"
#include "../Collection.h"

TEST(Collection, Constructor){
    Collection c;
    ASSERT_EQ("Untitled", c.getTitle());
    ASSERT_EQ(0, c.getSize());
}
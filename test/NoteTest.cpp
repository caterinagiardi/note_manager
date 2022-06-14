#include "gtest/gtest.h"

#include "../Collection.h"

TEST(Note, DefaultConstructor) {
    Note n;
    ASSERT_EQ("Untitled", n.getTitle());
    ASSERT_EQ("None", n.getContent());
    ASSERT_TRUE(n.isEditable());
}

/*
TEST(Note, Setter) {
    Note n;
    n.setEditable(true);
    ASSERT_TRUE(n.isEditable());
    n.setTitle("titolo");  // moving should disable fighting
    ASSERT_EQ("titolo", n.getTitle());
    n.setContent("contenuto");
    ASSERT_EQ("contenuto", n.getContent());
}
*/

TEST(Note, Editability){
    Note n;
    n.setEditable(false);
    n.setTitle("nuovo titolo");
    n.setContent("nuovo contenuto");
    ASSERT_EQ("Untitled", n.getTitle());
    ASSERT_EQ("None", n.getContent());
    n.setEditable(true);
    n.setTitle("nuovo titolo");
    n.setContent("nuovo contenuto");
    ASSERT_EQ("nuovo titolo", n.getTitle());
    ASSERT_EQ("nuovo contenuto", n.getContent());
}





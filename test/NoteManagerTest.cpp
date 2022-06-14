#include "gtest/gtest.h"

#include "../Collection.h"

TEST(Note, DefaultConstructor) {
    Note n;
    ASSERT_EQ(" ", n.getTitle());
    ASSERT_EQ(" ", n.getContent());
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
    ASSERT_EQ(" ", n.getTitle());
    ASSERT_EQ(" ", n.getContent());
}

TEST(Note, GetNote) {
    Note n;
    Note* m = n.getNote();
    ASSERT_EQ(m, &n);
}



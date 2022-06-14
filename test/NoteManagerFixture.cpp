#include "gtest/gtest.h"

#include "../Collection.h"
#include "../Menu.h"


class NoteManagerSuite : public ::testing::Test {

protected:
    virtual void SetUp() {
        n1->setContent("contenuto");
        n1->setTitle("titolo");
        n1->setEditable(true);
        n2->setContent("contenuto");
        n2->setTitle("titolo");
        n2->setEditable(true);
        c->setTitle("titolo");
        c->subscribe(m);
    }
    Menu* m;
    Collection* c;
    Note* n1;
    Note* n2;
};


TEST_F(NoteManagerSuite, Init){
    ASSERT_EQ(0, c->getSize());
    ASSERT_EQ(0, m->getNumofCollections());
}

TEST_F(NoteManagerSuite, AddNoteAndCollection) {
   c->addNewNote(n1);
   m->addCollection(c);
   ASSERT_EQ(1, c->getSize());
   ASSERT_EQ(1, m->getNumofCollections());
   m->addNotetoCollection(n2, c->getTitle());
   ASSERT_EQ(2, c->getSize());
}

TEST_F(NoteManagerSuite, Observer){
    int s = 0;
    ASSERT_EQ(m->logbook.size()-1, m->getNumofCollections());
    for( auto i = m->logbook.begin(); i != m->logbook.end(); i++)
        if(i->collectiontitle != "Preferiti")
            s = s + i->numofnotes;
    ASSERT_EQ(m->getNumofNotes(), s);
}





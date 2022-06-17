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
    }

    void init(){
        c->addNewNote(n1);
        m->addCollection(c);
    }

    Menu* m = new Menu();
    Collection* c = new Collection();
    std::shared_ptr<Note> n1 = std::make_shared<Note>();
    std::shared_ptr<Note> n2 = std::make_shared<Note>();
};


TEST_F(NoteManagerSuite, Init){
    ASSERT_EQ(0, c->getSize());
    ASSERT_EQ(0, m->getNumofCollections());
}

TEST_F(NoteManagerSuite, AddingandRemoving) {
   init();
   ASSERT_EQ(1, c->getSize());
   ASSERT_EQ(1, m->getNumofCollections());
   m->addNotetoCollection(n2, c->getTitle());
   ASSERT_EQ(2, c->getSize());
   c->removeNote(n1);
   ASSERT_EQ(1, c->getSize());
   m->removeNotefromCollection(n2, c->getTitle());
   ASSERT_EQ(0, c->getSize());
   m->removeCollection(c);
   ASSERT_EQ(0, m->getNumofCollections());
}

TEST_F(NoteManagerSuite, Observer){
    init();
    m->addNotetoCollection(n2, c->getTitle());
    // controllo che il numero di collezioni sia il solito.
    ASSERT_EQ(m->cv.getNumOfObservedcollection(), m->getNumofCollections());
    // controllo che il numero di note nella collezione sia il solito.
    ASSERT_EQ(c->getSize(), m->cv.getNumOfNotes(c->getTitle()));
}

TEST_F(NoteManagerSuite, Favorites){
    init();
    m->addNotetoFavorites(n1);
    ASSERT_EQ(m->getFavNumofNotes(), 1);
    m->removeNotefromFavorites(n1);
    ASSERT_EQ(m->getFavNumofNotes(), 0);
}

TEST_F(NoteManagerSuite, EditingAndRemovingLockedNote){
    init();
    n1->setEditable(false);
    ASSERT_FALSE(m->editNote(n1,  "prova", " "));
    ASSERT_FALSE(c->removeNote(n1));
    n1->setEditable(true);
    ASSERT_TRUE(m->editNote(n1,  "prova", " "));
    ASSERT_TRUE(c->removeNote(n1));
}





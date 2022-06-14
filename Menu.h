//
// Created by Caterina Giardi on 11/11/21.
//

#ifndef NOTE_MANAGER_MENU_H
#define NOTE_MANAGER_MENU_H


#include <vector>
#include "Collection.h"

struct Identifier{
    string collectiontitle;
    int numofnotes;
};

class Menu : public Observer {
private:

    vector<Collection*> collections; // collezioni di note
    Collection favorites = Collection("Preferiti"); // note importanti.

public:

    vector<Identifier> logbook; // tiene conto del numero di note per ogni collezione, le identifica con il titolo.

    Menu();
    void update(string t, int num) override;

    void addCollection(Collection* c);
    void addNotetoFavorites(Note* n);
    void removeNotefromFavorites(Note* n);
    void addNotetoCollection(Note* n, string collectiontitle);
    void removeNotefromCollection(Note* n, string collectiontitle);
    void removeCollection(Collection* c);
    int getNumofCollections();
    int getFavNumofNotes();
    int getNumofNotes();




    void showCollectionList();
    void showCollectionNotes(string t);
    void showAll();


    void printLogbook(string t);

};


#endif //NOTE_MANAGER_MENU_H


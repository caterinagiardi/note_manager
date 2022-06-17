//
// Created by Caterina Giardi on 11/11/21.
//

#ifndef NOTE_MANAGER_MENU_H
#define NOTE_MANAGER_MENU_H


#include <vector>
#include "Collection.h"
#include "CollectionViewer.h"

class Menu{
private:

    vector<Collection*> collections; // collezioni di note
    Collection favorites = Collection("Preferiti"); // note importanti.

public:

    CollectionViewer cv;
    Menu();
    ~Menu();

    void addCollection(Collection* c);
    void addNotetoFavorites(std::shared_ptr<Note> n);
    void removeNotefromFavorites(std::shared_ptr<Note> n);
    void addNotetoCollection(std::shared_ptr<Note> n, const string& collectiontitle);
    void removeNotefromCollection(std::shared_ptr<Note> n, const string& collectiontitle);
    void removeCollection(Collection* c);
    int getNumofCollections();
    int getFavNumofNotes();
    int getNumofNotes();
    bool editNote(std::shared_ptr<Note> note, const string& NoteTitle, const string& NoteContent);
    void setEditable(std::shared_ptr<Note> note, bool editable);

    void showCollectionList();
    void showCollectionNotes(const string& CollectionTitle);
    void showAll();


};


#endif //NOTE_MANAGER_MENU_H


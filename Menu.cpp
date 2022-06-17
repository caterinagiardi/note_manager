//
// Created by Caterina Giardi on 11/11/21.
//

#include "Menu.h"
#include "Collection.h"
#include <iostream>
#include <list>


Menu::Menu() {
    favorites.subscribe(&cv);
    favorites.notify();
}


void Menu::showCollectionList() {
    cout << "Le collezioni sono: \n";
    for(auto c : collections){
        cv.printCollection(c->getTitle());
        c->display();

    }

}

void Menu::showCollectionNotes(const string& CollectionTitle) {
    for (auto itr = collections.begin(); itr != collections.end(); itr++)
        if ((*itr)->getTitle() == CollectionTitle)

            (*itr)->display();
    if(CollectionTitle == "Preferiti")
        favorites.display();
}

void Menu::addCollection(Collection* c) {
    collections.push_back(c);
    c->subscribe(&cv);
    c->notify();
}

void Menu::addNotetoFavorites(std::shared_ptr<Note> n) {
    favorites.addNewNote(n);
    cout << "\nNota aggiunta ai preferiti.\n";
}

void Menu::addNotetoCollection(std::shared_ptr<Note> n, const string& collectiontitle) {
    for (auto itr = collections.begin(); itr != collections.end(); itr++)
        if ((*itr)->getTitle() == collectiontitle)
            (*itr)->addNewNote(n);
}

void Menu::showAll() {
    for (auto itr = collections.begin(); itr != collections.end(); itr++) {
        cout << "\n";
        for( auto c : collections){
            cv.printCollection(c->getTitle());
            c->display();
        }
    }
    cout << "\n";
    cv.printCollection(favorites.getTitle());
    favorites.display();
}


int Menu::getNumofCollections() {
    return collections.size();
}

void Menu::removeNotefromCollection(std::shared_ptr<Note> n, const string& collectiontitle) {
    for (auto itr = collections.begin(); itr != collections.end(); itr++)
        if ((*itr)->getTitle() == collectiontitle)
            (*itr)->removeNote(n);
}

void Menu::removeNotefromFavorites(std::shared_ptr<Note> n) {
    favorites.removeNote(n);
}

int Menu::getFavNumofNotes() {
    return favorites.getSize();
}

int Menu::getNumofNotes() {
    int count = 0;
    for (int i = 0; i < collections.size(); i++)
        count = count + collections[i]->getSize();
    return count;
}

void Menu::removeCollection(Collection *c) {
    for (int i = 0; i < collections.size(); i++)
        if (collections[i] == c)
            collections.erase(collections.begin() + i);
}

Menu::~Menu() {
    for(auto itr : collections)
        delete itr;
}

bool Menu::editNote(std::shared_ptr<Note> note, const string &NoteTitle, const string &NoteContent) {
    if(note->isEditable()){
        note->setTitle(NoteTitle);
        note->setContent(NoteContent);
        return true;
    }
    else
        return false;
}

void Menu::setEditable(std::shared_ptr<Note> note, bool editable) {
    note->setEditable(editable);
    for(auto c : collections)
        c->notify();
    favorites.notify();
}








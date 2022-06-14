//
// Created by Caterina Giardi on 11/11/21.
//

#include "Menu.h"
#include "Collection.h"
#include <iostream>
#include <list>

void Menu::update(string t, int num) {
    bool isPresent = false;
    auto itr2 = logbook.begin();
    for (; itr2 != logbook.end(); itr2++){
        if (t == itr2->collectiontitle) {
            itr2->numofnotes = num;
            isPresent = true;
        }
    }
    if(!isPresent) {
        Identifier a;
        a.numofnotes = num;
        a.collectiontitle = t;
        logbook.push_back(a);
    }
    /* if (logbook.size() < collections.size()) {
        Identifier a;
        a.numofnotes = 0;
        a.collectiontitle = " ";
        logbook.push_back(a);
    }
    itr2->collectiontitle = itr1->getTitle();
    itr2->numofnotes = itr1->getNumofCollections();
    cout << itr2->collectiontitle << " " << +itr2->numofnotes;
    totalnotes += itr2->numofnotes;
    itr2++;
    */
}


Menu::Menu() {
    favorites.subscribe(this);
    favorites.notify();
}


void Menu::showCollectionList() {
    cout << "Le collezioni sono: \n";
    for (auto itr = collections.begin(); itr != collections.end(); itr++)
        printLogbook((*itr)->getTitle());
    printLogbook(favorites.getTitle());
}


void Menu::showCollectionNotes(string t) {
    for (auto itr = collections.begin(); itr != collections.end(); itr++)
        if ((*itr)->getTitle() == t)

            (*itr)->display();
    if(t == "Preferiti")
        favorites.display();
}

void Menu::addCollection(Collection* c) {
    collections.push_back(c);
    c->subscribe(this);
    c->notify();
}

void Menu::addNotetoFavorites(Note* n) {
    favorites.addNewNote(n);
    cout << "\nNota aggiunta ai preferiti.\n";
}

void Menu::addNotetoCollection(Note* n, string collectiontitle) {
    for (auto itr = collections.begin(); itr != collections.end(); itr++)
        if ((*itr)->getTitle() == collectiontitle)
            (*itr)->addNewNote(n);
}

void Menu::showAll() {

    for (auto itr = collections.begin(); itr != collections.end(); itr++) {
        cout << "\n";
        printLogbook((*itr)->getTitle());
        (*itr)->display();

    }
    cout << "\n";
    printLogbook(favorites.getTitle());
    favorites.display();
}



void Menu::setEditable(Note* n, bool e) {
    n->setEditable(e);
}




void Menu::printLogbook(string t){
    for(auto itr = logbook.begin(); itr != logbook.end(); itr ++){
        if(itr->collectiontitle == t){
            cout << itr->collectiontitle << " (" << itr->numofnotes << ")\n";
        }
    }
}

int Menu::getNumofCollections() {
    return collections.size();
}

void Menu::removeNotefromCollection(Note *n, string collectiontitle) {
    for (auto itr = collections.begin(); itr != collections.end(); itr++)
        if ((*itr)->getTitle() == collectiontitle)
            (*itr)->removeNote(n);
}

void Menu::removeNotefromFavorites(Note *n) {
    favorites.removeNote(n);
}

int Menu::getFavNumofNotes() {
    favorites.getSize();
}

int Menu::getNumofNotes() {
    int count = 0;
    for (int i = 0; i < collections.size(); i++)
        count = count + collections[i]->getSize();
}








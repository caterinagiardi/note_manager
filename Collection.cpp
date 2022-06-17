//
// Created by Caterina Giardi on 11/11/21.
//

#include <iostream>
#include <utility>
#include "Collection.h"


using namespace std;


Collection::Collection(string title) {
    Collection::title = std::move(title);
}

Collection::~Collection() {
    for(auto itr : notes)
        itr.reset();
}

string Collection::getTitle() const {
    return title;
}

int Collection::getSize() const {
    return notes.size();
}
void Collection::setTitle(const string &t) {
    Collection::title = t;
}


void Collection::subscribe(Observer *o) {
    observers.push_back(o);
}
void Collection::unsubscribe(Observer *o) {
    observers.remove(o);
}
void Collection::notify() {
    int count = 0;
    for(auto n: notes){
        if(!n->isEditable())
            count ++;
    }
    for(auto observer : observers)
        observer->update(this->title, this->notes.size(), count);
}




void Collection::addNewNote(std::shared_ptr<Note> note) {
    notes.push_front(note);
    notify();
}

void Collection::display() {
    for(auto note : notes) {
        note->printNote();
    }
}

bool Collection::removeNote(std::shared_ptr<Note> note) {
    if (note->isEditable()) {
        notes.remove(note);
        notify();
        return true;
    }
    return false;
}

bool Collection::searchNote(const string &NoteTitle) {
    for (auto note : notes)
        if (note->getTitle() == NoteTitle)
            return true;
    cout << "La nota cercata non esiste.\n";
    return false;
}



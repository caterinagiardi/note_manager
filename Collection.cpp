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
    for(auto observer : observers)
        observer->update(this->title, notes.size());
}




void Collection::addNewNote(Note* n) {
    notes.push_front(n);
    notify();
}

void Collection::display() {
    for(auto note : notes) {
        note->printNote();
    }
}

void Collection::removeNote(Note *n) {
    notes.remove(n);
}



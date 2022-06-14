//
// Created by Caterina Giardi on 11/11/21.
//
#include <iostream>
#include <utility>
#include "Note.h"


string Note::getTitle() const {
    return title;
}

string Note::getContent() const {
    return content;
}

bool Note::isEditable() const {
    return editable;
}

void Note::setTitle(const string& name) {
    if(Note::isEditable())
        Note::title = name;
    else cout << "Non puoi modificare questa nota. " ;
}

void Note::setEditable(bool e) {
    Note::editable = e;
}

void Note::setContent(const string c) {
    if(Note::isEditable())
        Note::content = c;
    else cout << "Non puoi modificare questa nota. " ;
}

void Note::printNote() {
    cout << title << "\n";
    cout << "   " << content << "\n";
}

Note::Note(string title, string content, bool ed) {
    Note::title = std::move(title);
    Note::content = std::move(content);
    Note::editable = ed;
}


Note* Note::getNote() {
    return this;
}

Note::~Note() {
}

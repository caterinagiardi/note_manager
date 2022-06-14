//
// Created by Caterina Giardi on 11/11/21.
//

#ifndef NOTE_MANAGER_COLLECTION_H
#define NOTE_MANAGER_COLLECTION_H


#include <list>
#include "Note.h"
#include "Observer.h"


class Collection : Subject {
private:
    list<Observer*> observers;
    string title;
    list<Note*> notes;

public:
    // costruttore e distruttore
    explicit Collection(string title = "Untitled");
    ~Collection();

    // getter e setter
    string getTitle() const;
    int getSize() const;
    void setTitle(const string &t);

    // metodi observer
    void subscribe(Observer *o) override;
    void unsubscribe(Observer *o) override;
    void notify() override;

    // aggiungere/eliminare/modificare/rimuovere le note
    void addNewNote(Note* n);
    void removeNote(Note* n);

    // mostrare le note contenute nella collezione
    void display();


};


#endif //NOTE_MANAGER_COLLECTION_H

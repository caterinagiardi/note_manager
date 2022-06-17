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
    list<std::shared_ptr<Note>> notes;

public:
    // costruttore e distruttore
    explicit Collection(string title = "Untitled");
    ~Collection();

    // getter e setter
    string getTitle() const;
    int getSize() const;
    void setTitle(const string &title);

    // metodi observer
    void subscribe(Observer *o) override;
    void unsubscribe(Observer *o) override;
    void notify() override;

    // aggiungere/eliminare
    void addNewNote(shared_ptr<Note> n);
    bool removeNote(std::shared_ptr<Note> note);
    bool searchNote(const string &NoteTitle);

    // mostrare le note contenute nella collezione
    void display();


};


#endif //NOTE_MANAGER_COLLECTION_H

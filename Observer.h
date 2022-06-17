//
// Created by Caterina Giardi on 13/06/22.
//

#ifndef NOTE_MANAGER_OBSERVER_H
#define NOTE_MANAGER_OBSERVER_H

#include <string>
class Observer;

class Subject{
public:
    virtual void subscribe(Observer *o) = 0;
    virtual void unsubscribe(Observer* o) = 0;
    virtual void notify() = 0;
};

class Observer{
public:
    virtual void update(const string& CollectionTitle, int NumOfCollection, int NumOfLockedNotes) = 0;
};



#endif //NOTE_MANAGER_OBSERVER_H

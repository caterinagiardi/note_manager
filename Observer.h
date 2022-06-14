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
    // virtual ~Subject() {};
};

class Observer{
public:
    virtual void update(string t, int num) = 0;
    // virtual ~Observer() {};
};



#endif //NOTE_MANAGER_OBSERVER_H

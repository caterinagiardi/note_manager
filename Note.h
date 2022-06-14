//
// Created by Caterina Giardi on 11/11/21.
//

#ifndef NOTE_MANAGER_NOTE_H
#define NOTE_MANAGER_NOTE_H
#include <string>

using namespace std;

class Note {
private:
    string title;
    string content;
    bool editable = true;


public:
    string getTitle() const;
    string getContent() const;
    bool isEditable() const;
    Note* getNote() ;

    void printNote();

    void setTitle(const string& name);
    void setContent(string c);
    void setEditable(bool e);


    explicit Note(string title = " ", string content = " ", bool ed = true);
    virtual ~Note();

};


#endif //NOTE_MANAGER_NOTE_H

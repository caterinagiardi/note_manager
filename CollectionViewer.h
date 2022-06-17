//
// Created by Caterina Giardi on 17/06/22.
//

#ifndef NOTE_MANAGER_COLLECTIONVIEWER_H
#define NOTE_MANAGER_COLLECTIONVIEWER_H

#include "Collection.h"
#include <vector>

struct Identifier{
    string CollectionTitle;
    int NumOfNotes;
    int NumOfLockedNotes;
};

class CollectionViewer : public Observer{
private:
    vector<Identifier> logbook;
public:

    void printCollection(const string& CollectionTitle);
    void update(const string& CollectionTitle, int NumOfCollections, int NumOfLockedNotes) override;

    // restituisce il numero di collezioni che ho salvato nel logbook
    int getNumOfObservedcollection();
    // restituisce il numero di note bloccate nella collezione di cui fornisco il titolo
    int getNumOfLockednotes(const string& CollectionTitle);
    // restituisce il numero totale di note contenuti nella collezione di cui fornisco il titolo
    int getNumOfNotes(const string& CollectionTitle);

};


#endif //NOTE_MANAGER_COLLECTIONVIEWER_H

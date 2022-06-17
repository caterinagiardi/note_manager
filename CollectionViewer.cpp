//
// Created by Caterina Giardi on 17/06/22.
//

#include "CollectionViewer.h"
#include <iostream>

void CollectionViewer::update(const string &CollectionTitle, int NumOfCollections, int NumOfLockedNotes) {
    bool isPresent = false;
    auto itr2 = logbook.begin();
    for (; itr2 != logbook.end(); itr2++) {
        if (CollectionTitle == itr2->CollectionTitle) {
            itr2->NumOfNotes = NumOfCollections;
            itr2->NumOfLockedNotes = NumOfLockedNotes;
            isPresent = true;

        }
    }
    if (!isPresent) {
        Identifier a;
        a.NumOfNotes = NumOfCollections;
        a.CollectionTitle = CollectionTitle;
        a.NumOfLockedNotes = NumOfLockedNotes;
        logbook.push_back(a);
    }
}

void CollectionViewer::printCollection(const string &CollectionTitle) {
    for (auto id: logbook)
        if (id.CollectionTitle == CollectionTitle) {
            cout << "\n" << CollectionTitle << " (" << id.NumOfNotes << ")\n";
            cout << "   di cui bloccate (" << id.NumOfLockedNotes << ")\n";
        }
}

CollectionViewer::CollectionViewer() {

}

int CollectionViewer::getNumOfObservedcollection() {
    // i preferiti non li conto
    return logbook.size() - 1;
}

int CollectionViewer::getNumOfLockednotes(const string &CollectionTitle) {
    for (auto id: logbook) {
        if (id.CollectionTitle == CollectionTitle) {
            return id.NumOfLockedNotes;
        }
    }
    return -1;
}

int CollectionViewer::getNumOfNotes(const string &CollectionTitle) {
    int count = 0;
    for (auto id: logbook) {
        if("Preferiti" != id.CollectionTitle)
            count += id.NumOfNotes;
    }
    return count;
}


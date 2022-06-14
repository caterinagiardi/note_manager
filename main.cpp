#include <iostream>
#include "Menu.h"

using namespace std;
int main() {
    Menu home;

    Note* n = new Note("Titolo", "Contenuto");

    Collection* c1 = new Collection("Matematica");
    Collection* c2 = new Collection("Italiano");

    Note* n1 = new Note("Operazioni", "Addizione, sottrazione, moltiplicazione e divisione");
    Note* n2 = new Note("Proposizioni semplici", "Di, a, da, in, con, su, per, tra, fra.");
    Note* n5 = new Note("Articoli determinativi", "Il, lo, gli, i, la, le.");



    home.addCollection(c1);
    home.addCollection(c2);

    home.addNotetoCollection(n1, "Matematica");
    home.addNotetoCollection(n2, "Italiano");
    home.addNotetoCollection(n5, "Italiano");

    home.showCollectionList();

    home.addNotetoFavorites(n);
    n->setEditable(false);
    n->setTitle( "titolo che non verrà memorizzato");
    n->setContent("contenuto che non verrà memorizzato");
    n->setEditable(true);
    n->setTitle("titolo che verrà memorizzato");
    n->setContent("contenuto che verrà memorizzato");

    home.showAll();
    //c1.addNewNote(n);
    //c2.addNewNote(n2);
    //c2.addNewNote(n5);
    home.removeNotefromFavorites(n);
    home.showAll();


    std::cout << "\nFINE\n" << std::endl;
    return 0;

}
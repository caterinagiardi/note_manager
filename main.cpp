#include <iostream>
#include "Menu.h"

using namespace std;
int main() {
    Menu home;

    std::shared_ptr<Note> n = std::make_shared<Note>("Titolo", "Contenuto");

    Collection* c1 = new Collection("Matematica");
    Collection* c2 = new Collection("Italiano");

    std::shared_ptr<Note> n1 = std::make_shared<Note>("Operazioni", "Addizione, sottrazione, moltiplicazione e divisione");
    std::shared_ptr<Note> n2 = std::make_shared<Note>("Proposizioni semplici", "Di, a, da, in, con, su, per, tra, fra.");
    std::shared_ptr<Note> n3 = std::make_shared<Note>("Articoli determinativi", "Il, lo, gli, i, la, le.");

    home.addCollection(c1);
    home.addCollection(c2);

    home.addNotetoCollection(n1, "Matematica");
    home.addNotetoCollection(n2, "Italiano");
    home.addNotetoCollection(n3, "Italiano");

    home.showCollectionList();

    home.addNotetoFavorites(n);
    n->setEditable(false);
    n->setTitle( "titolo che non verrà memorizzato");
    n->setContent("contenuto che non verrà memorizzato");

    home.showAll();

    n->setEditable(true);
    n->setTitle("titolo che verrà memorizzato");
    n->setContent("contenuto che verrà memorizzato");

    home.removeNotefromFavorites(n);
    home.showAll();

    std::cout << "\nFINE\n" << std::endl;
    return 0;
}
#include <iostream>
#include <string> 

using namespace std; 

int main () {

    string entrada, aux;
    int max_leitura; 
    int ciclos = 0, leitura_track = 0;

    while (cin >> entrada){

        cin >> aux;
        max_leitura = stoi(aux);

        for (int i = 0; i < entrada.length(); i++){
            if (entrada[i] == 'R') {
                if (leitura_track < max_leitura) { 
                    leitura_track++;
                } else {
                    leitura_track = 1;
                    ciclos++;
                }
            } else if (entrada[i] == 'W') {
                ciclos++;
                if (leitura_track > 0) {
                    ciclos++;
                    leitura_track = 0;
                } 
            }
        }

        if (leitura_track > 0) { ciclos++; }

        cout << ciclos << endl;

        leitura_track = 0;
        ciclos = 0;
    }

    return 0; 
}
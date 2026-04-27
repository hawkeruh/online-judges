#include <iostream>
#include <string>

using namespace std;

int main() {

    string entrada;

    while (getline(cin, entrada)) {

        int contador = 0;

        for (int i = 0; i < entrada.size(); i++) {
            if (entrada[i] == '(') { contador++; }
            if (entrada[i] == ')') { 
                if (contador == 0) { contador++; break; }
                else { contador--;}
            }
        }

        if (contador == 0) { cout << "correct" << endl; }
        else { cout << "incorrect" << endl; }
    }
    
    return 0;
}
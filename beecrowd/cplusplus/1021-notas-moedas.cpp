#include <iostream>
#include <iomanip>

using namespace std;

int contagem (double& valor, double tipo) {
    int cont = 0;
    
    while (valor + 1e-9 >= tipo) {
        valor -= tipo;
        cont++;
    }
    
    return cont;
}

int main() {
 
    // tive que fazer em double por que estava dando problema do ponto flutuante
    double valor;
    double notas[] = {100, 50, 20, 10, 5, 2};
    double moedas[] = {1, 0.50, 0.25, 0.10, 0.05, 0.01};
    int cNotas[6] = {0};
    int cMoedas[6] = {0};
    
    cin >> valor;
    
    for (int i = 0; i < 6; i++){
        cNotas[i] = contagem(valor, notas[i]);
    }
    for (int i = 0; i < 6; i++){
        cMoedas[i] = contagem(valor, moedas[i]);
    }
    
    cout << fixed << setprecision(2);
    
    cout << "NOTAS:" << endl;
    for (int i = 0; i < 6; i++){
        cout << cNotas[i] << " nota(s) de R$ "
        << notas[i] << endl;
    }
    
    cout << "MOEDAS:" << endl;
    for (int i = 0; i < 6; i++){
        cout << cMoedas[i] << " moeda(s) de R$ "
        << moedas[i] << endl;
    }
 
    return 0;
}
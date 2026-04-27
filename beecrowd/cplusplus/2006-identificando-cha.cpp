#include <iostream>
#include <string>
using namespace std;

int main() {

    int tipo_cha;
    cin >> tipo_cha;

    int resposta, acertos = 0;
    for (int i = 0; i < 5; i++) {
        cin >> resposta;
        if (resposta == tipo_cha) { acertos++; }
    }

    cout << acertos << endl;

    return 0;
}
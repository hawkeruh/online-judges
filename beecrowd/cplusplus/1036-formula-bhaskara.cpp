#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int main() {
 
    double a, b, c;
    cin >> a >> b >> c; 

    double delta = (b * b) - 4 * a * c;

    if (delta < 0 || a == 0) { cout << "Impossivel calcular\n"; return 0; }
    
    cout << fixed << setprecision(5);
    cout << "R1 = " << (-b + sqrt(delta)) / (2.0 * a) << endl;
    cout << "R2 = " << (-b - sqrt(delta)) / (2.0 * a) << endl;
 
    return 0;
}
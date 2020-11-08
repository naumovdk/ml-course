// https://www.microsoft.com/en-us/research/wp-content/uploads/2016/02/tr-98-14.pdf
// http://cs229.stanford.edu/materials/smo.pdf
// http://mechanoid.su/ml-svm.html

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int n;
vector<vector<double>> d;
vector<double> y;
double C;

vector<double> a;
double b;

double eps = 1e-5;
int ITERATIONS = 1000;

int second_random_index(int i, int size) {
    int ans;
    do {
        ans = rand() % size;
    } while (ans == i);
    return ans;
}

double f(int i) {
    double res = b;
    for (int j = 0; j < n; ++j) {
        res += d[i][j] * y[j] * a[j];
    }
    return res;
}

void smo() {
    b = 0;
    a.assign(n, 0);
    for (int t = 0; t < ITERATIONS; t++) {
        for (int i = 0; i < n; i++) {
            double Ei = f(i) - y[i];
            if ((y[i] * Ei < -eps && a[i] < C) || (y[i] * Ei > eps && a[i] > 0)) {
                int j = second_random_index(i, n);
                double Ej = f(j) - y[j];
                double L, H;
                if (y[i] != y[j]) {
                    L = max(0., a[j] - a[i]);
                    H = min(C, C + a[j] - a[i]);
                } else {
                    L = max(0., a[i] + a[j] - C);
                    H = min(C, a[i] + a[j]);
                }
                double etta = 2 * d[i][j] - d[i][i] - d[j][j];
                double aj_old = a[j];
                double aj = max(L, min(H, aj_old - y[j] * (Ei - Ej) / etta));
                double ai_old = a[i];
                double ai = ai_old + y[i] * y[j] * (aj_old - aj);
                double b1 = b - Ei - y[i] * (ai - ai_old) * d[i][i] - y[j] * (aj - aj_old) * d[i][j];
                double b2 = b - Ej - y[i] * (ai - ai_old) * d[i][j] - y[j] * (aj - aj_old) * d[j][j];
                if (0 < ai_old && ai_old < C) {
                    b = b1;
                } else if (0 < aj_old && aj_old < C) {
                    b = b2;
                } else {
                    b = (b1 + b2) / 2;
                }
                a[i] = ai;
                a[j] = aj;
            }
        }
    }
}

int main() {
    std::ios_base::sync_with_stdio(false);
    std::cin.tie(nullptr);
    std::cout.tie(nullptr);
    std::cout.precision(5);

    cin >> n;
    d.assign(n, vector<double>(n));
    y.resize(n);
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; j++) {
            cin >> d[i][j];
        }
        cin >> y[i];
    }
    cin >> C;

    a.assign(n, 0);
    smo();

    for (auto& ai : a) {
        cout << ai << '\n';
    }
    cout << b;
}
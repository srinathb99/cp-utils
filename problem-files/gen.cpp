#include<bits/stdc++.h>
 
#define endl '\n'
 
typedef unsigned long long ULL;
typedef long long LL;
typedef long double LD;
 
using namespace std;
 
void fast() {
	ios_base::sync_with_stdio(false);
	cin.tie(NULL);
}

int my_rand(int a, int b) {
	return a + rand() % (b - a + 1);
}

int main(int argc, char* argv[]) { 
	fast();
	srand(atoi(argv[1]));
	
}

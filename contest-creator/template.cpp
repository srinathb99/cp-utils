#include<bits/stdc++.h>
 
#define endl '\n'
 
typedef unsigned long long ULL;
typedef long long LL;
typedef long double LD;
 
using namespace std;
 
#ifdef LOCAL
	#include "/opt/cp-utils/debugger/debug.h"
#else
	struct debug {
		template<class c> debug & operator <<(const c&) { return *this; }
	};
#endif
#define name(...) " [" << #__VA_ARGS__ ": " << (__VA_ARGS__) << "] "
 
void fast() {
	ios_base::sync_with_stdio(false);
	cin.tie(NULL);
}

void solve() {
	
}

int main() { 
	fast();
	
	int t = 1;
	
	cin >> t;
	
	while( t-- ) {
		solve();
	}
	
	return 0;
}

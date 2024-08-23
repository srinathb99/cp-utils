const int MOD = 1e9 + 7; //1e9 + 9, 998244353
struct Mint {
	int x;
	Mint() {
		x = 0;
	}
	Mint(LL _x) {
		x = _x % MOD;
		if(x < 0) x += MOD;
	}
	Mint operator * (const Mint& other) const {
		return Mint((x * 1LL * other.x) % MOD);
	}
	Mint operator + (const Mint& other) const {
		return Mint(x + other.x);
	}
	Mint operator - (const Mint& other) const {
		return Mint(x - other.x);
	}
	void operator *= (const Mint& other) {
		x = (x * 1LL * other.x);
	}
	void operator += (const Mint& other) {
		x += other.x;
		if(x >= MOD) x -= MOD;
	}
	void operator -= (const Mint& other) {
		x -= other.x;
		if(x < MOD) x -= MOD;
	}
	Mint pow(int n) const {
		Mint res(1);
		Mint a(x);
		while(n > 0) {
			if(n & 1) {
				res *= a;
			}
			a *= a;
			n >>= 1;
		}
		return res;
	}
	Mint inv() const {
		return Mint(*this).pow(MOD - 2);
	}
	Mint operator / (const Mint& other) const {
		return *this * (other.inv());
	}
	void operator /= (const Mint& other) {
		x = Mint(*this / other).x;
	}
};

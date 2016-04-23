/* File : test.cpp */
#include "test.hpp"

double  My_variable  = 3.0;

/* Compute factorial of n */
int  fact(int n) {
	if (n <= 1) return 1;
	else return n*fact(n-1);
}

/* Compute n mod m */
int my_mod(int n, int m) {
	return(n % m);
}

std::string get_version()
{
	return "Version 1.0 Build 133";
}

std::vector<std::string> get_parts()
{
	std::vector<std::string> v;
	v.push_back("buruputu");
	v.push_back("bujugulu");
	v.push_back("hujuputu");
	return v;
}
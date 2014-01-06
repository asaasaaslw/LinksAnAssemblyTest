// LinksAnAssemblyTest.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
using namespace std;

double CombineC(int a, int b, int c, int d, int e, double f)
{
	return (a+b+c+d+e)/(f+1.5);
}
// NOTE: extern ¡°C¡± needed to prevent C++ name mangling
extern "C" int __stdcall CombineA(long arg1, long arg2);

int _tmain(int argc, _TCHAR* argv[])
{
	cout << "CombineC: " << CombineC(1,2,3,4, 5, 6.1) << endl;
	cout << "CombineA: " << CombineA(1, 2) << endl;
	system("pause");
	return 0;
}


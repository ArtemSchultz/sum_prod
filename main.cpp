#include <iostream>


int main() {
	unsigned int number;
	std::cout << "Enter your number: ";
	std::cin >> number;

	unsigned int summ = 0;
	unsigned int prod = 1u;
	do{
	summ += number % 10;
	prod *= number % 10;
	number /= 10;
	}while(number != 0);

	std::cout << summ << ", " << prod << std::endl;
	return 0;
}


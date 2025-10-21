# Сумма и произведение числа 
Пользователь вводит число (целое, поолжительное).
Нужно вычислить сумму ипроизведение цифр числа его десятичного представлении.

##Пример:

Ввод: 99

Вывод: 18 и 81

Пример: `9 + 9 = 18`, `9 * 9 = 81`
#include <iostream>
#include <string>

int main(int argc, char* argv[]) {
    unsigned int summ = 0;
    unsigned int prod = 1u;

    if (argc > 1) {
        char* number = argv[1];
        int index = 0;
        
        // Проверка на пустую строку
        if (number[0] == '\0') {
            std::cout << "Error: Empty number provided" << std::endl;
            return 1;
        }
        
        while (number[index] != '\0') {
            if (number[index] >= '0' && number[index] <= '9') {
                unsigned int digit = number[index] - '0';
                summ += digit;
                prod *= digit;
            } else {
                std::cout << "Error: Wrong number '" << argv[1] << "'" << std::endl;
                return 1;
            }
            ++index;
        }
        std::cout << summ << ", " << prod << std::endl;
        return 0;
    } else {
        std::string input;
        std::cout << "Enter your number: ";
        std::cin >> input;
        
        // Проверка на пустой ввод
        if (input.empty()) {
            std::cout << "Error: No number entered" << std::endl;
            return 1;
        }
        
        // Обработка каждого символа как цифры
        for (char c : input) {
            if (c >= '0' && c <= '9') {
                unsigned int digit = c - '0';
                summ += digit;
                prod *= digit;
            } else {
                std::cout << "Error: Invalid character '" << c << "' in number" << std::endl;
                return 1;
            }
        }
        
        std::cout << summ << ", " << prod << std::endl;
        return 0;
    }
}

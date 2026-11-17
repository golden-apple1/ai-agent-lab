#include <iostream>

int main() {
    if (2 + 2 != 4) {
        std::cerr << "BasicAddition failed" << std::endl;
        return 1;
    }

    std::cout << "BasicAddition passed" << std::endl;
    return 0;
}

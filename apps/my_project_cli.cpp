#include <iostream>
#include "my_project/foo.hpp"

int main() {
    std::cout << "Hello from my_project_cli!" << std::endl;
    std::cout << "2 + 3 = " << my_project::add(2, 3) << std::endl;
    return 0;
}

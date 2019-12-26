#include <iostream>
#include <iomanip>

short  data[] = { -5, 0, 259, 5 };  // 16 bit data

int main( void ) {
    for( int i = 0; i < 4; i++ ) {
        std::cout << std::setw(5) << data[i] 
                  << std::setw(12) << &data[i]
                  << std::endl;
    }
}


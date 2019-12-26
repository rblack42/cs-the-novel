#include <iostream>
#include <iomanip>
#include <bitset>

short  data[] = { -5, 0, 259, 5 };  // 16 bit data
int main( void ) {
    for( int i = 0; i < 4; i++ ) {
        std::bitset<16> bin(data[i]);
        std::cout << std::setw(5) << data[i] 
                  << std::setw(12) << &data[i]
                  << std::setw(17) << bin
                  << std::endl;
    }
}


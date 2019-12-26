#include <iostream>
#include <iomanip>
#include <bitset>

short  data = 0;  // 16 bit data
int main( void ) {
    for( int i = 0; i < 20; i++ ) {
        std::bitset<16> bin(data);
        std::cout << std::setw(5) << data 
                  << std::setw(17) << bin
                  << std::endl;
        data++;
    }
}


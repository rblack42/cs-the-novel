#include <iostream>

short  data[] = { -5, 0, 259, 5 };  // 16 bit data

int main( void ) {
    for( int i = 0; i < 4; i++ ) {
        std::cout << data[i] << std::endl;
    }
}


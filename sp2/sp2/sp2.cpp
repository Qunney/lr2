#include <iostream>

using namespace std;
#define size 9
int main()
{
    int array[size] = { 5, -2, 7, 4, -5, -6, 7, -8, 10 };
    for (int i = 0; i < size; i++)
    {
        if (array[i] > 0) 
            array[i] = array[i] & 0b01110111;        
        else array[i] = array[i] >> 2;
        cout << array[i] << " " ;
    }
    return 0;
}


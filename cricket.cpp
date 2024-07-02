#include <cstdlib> 
#include <ctime> 
#include <iostream> 
using namespace std; 
  
// Driver Code 
int main() 
{ 
    int totalrun = 0; 
    srand(time(0)); 
    int i; 
  
    // Generate a random number 
    // and store in variable 
    i = (rand() % 25) + 1; 
    cout << "~~~~~~~~ CRICKET GAME ~~~"
         << "~~~~~~~" << endl; 
  
    // Displaying the winning score 
    cout << "Your winning score "
         << i << "\n"; 
  
    // while loop for true condition 
    while (1) { 
        int player = 0; 
        int a; 
  
        if (totalrun > i) { 
            cout << "you won your score="
                 << totalrun << "\n"; 
  
            // To exit loop 
            exit(0); 
        } 
        else { 
  
            // Generate random no. and 
            // store in a variable 
            a = (rand() % 6) + 1; 
            cout << "Enter no. between "
                 << "1 to 6" << endl; 
  
            // Taking input from user 
            // to score runs 
            cin >> player; 
  
            // Checking if user's score 
            // exceeds the winning score 
            // Displaying random number 
            // taken by system on screen 
            cout << "System: " << a << endl; 
  
            // Check if number inserted 
            // by user is the same random 
            // number generated by system 
            // inside loop 
            if (player == a) { 
                cout << "OUT your score ="
                     << totalrun 
                     << endl; 
  
                // To exit loop 
                exit(0); 
            } 
  
            // Storing total runs scored 
            // by user 
            else { 
                totalrun = totalrun + player; 
            } 
        } 
    } 
  
    return 0; 
}

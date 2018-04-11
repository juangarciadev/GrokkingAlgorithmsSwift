// Chapter 3

import Foundation

// Here’s a recursive function to calculate the factorial of a number:

func fact(x: Int) -> Int {
    if x == 1 {
        return 1
    } else {
        return x * fact(x: x - 1)
    }
}

print(fact(x: 5))





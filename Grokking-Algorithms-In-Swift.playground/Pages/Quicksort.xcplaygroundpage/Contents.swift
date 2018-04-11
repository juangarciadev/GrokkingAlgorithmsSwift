// Chapter 4

import Foundation

func quicksort(_ array: [Int]) -> [Int] {
    if array.count < 2 {
        // Base case: arrays with 0 or 1 element are already “sorted.”
        return array
    } else {
        // Recursive case
        let pivot = array[0]
        var less: [Int] = []
        var greater: [Int] = []
        // Sub-array of all the elements less than the pivot
        for i in Array(array.dropFirst()) {
            if i <= pivot {
                less.append(i)
            }
        }
        // Sub-array of all the elements greater than the pivot
        for i in Array(array.dropFirst()) {
            if i > pivot {
                greater.append(i)
            }
        }
        
        return quicksort(less) + [pivot] + quicksort(greater)
    }
}

print(quicksort([10, 5, 2, 3]))

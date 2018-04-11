// Chapter 2
// Selection Sort Sample

import Foundation

func findSmallest(arr: [Int]) -> Int {
    var smallest = arr[0]
    var smallestIndex = 0
    
    for (i, _) in arr.enumerated() {
        if arr[i] < smallest {
            smallest = arr[i]
            smallestIndex = i
        }
    }
    
    return smallestIndex
}

print(findSmallest(arr: [5, 3, 6, 2, 10]))


func selectionSort(arr: [Int]) -> [Int] {
    var oldArr = arr
    var newArr: [Int] = []
    
    for _ in oldArr {
        let smallest = findSmallest(arr: oldArr)
        newArr.append(oldArr.remove(at: smallest))
    }
    
    return newArr
}

print(selectionSort(arr: [5, 3, 6, 2, 10]))

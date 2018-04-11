// Chapter 4

// EXERCISES

import Foundation

// 4.1

func sum(_ list: [Int]) -> Int {
    if list.count == 0 {
        return 0
    } else {
        return list[0] + sum(Array(list.dropFirst()))
    }
}

print(sum([2, 4, 6]))

// 4.2

func count(_ list: [Int]) -> Int {
    if list.count == 0 {
        return 0
    } else {
        return 1 + count(Array(list.dropFirst()))
    }
}

print(count([2, 4, 6]))

// 4.3

func max(_ list: [Int]) -> Int {
    if list.count == 2 {
        return list[0] > list[1] ? list[0] : list[1]
    }

    let subMax = max(Array(list.dropFirst()))
    return list[0] > subMax ? list[0] : subMax
}

print(max([2, 4, 6]))

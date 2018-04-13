// Chapter 6

import Foundation

var graph = [String:[String]]()
graph["you"] = ["alice", "bob", "claire"]
graph["bob"] = ["anuj", "peggy"]
graph["alice"] = ["peggy"]
graph["claire"] = ["thom", "jonny"]
graph["anuj"] = []
graph["peggy"] = []
graph["thom"] = []
graph["jonny"] = []

func search(name: String) -> Bool {
    var searchQueue = [String]()
    searchQueue = graph[name]!
    var searched = [String]()
    
    while searchQueue.count > 0 {
        let person = searchQueue.removeFirst()
        
        if !searched.contains(person) {
            if personIsSeller(name: person) {
                print("\(String(describing: person)) is mango seller!")
                return true
            } else {
                if let people = graph[person] {
                    searchQueue += people
                    searched.append(person)
                }
            }
        }
    }
    
    return false
}

func personIsSeller(name: String) -> Bool {
    return name.last == "m"
}

print(search(name: "thom"))

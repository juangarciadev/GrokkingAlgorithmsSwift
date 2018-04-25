// Chapter 8

import Foundation

var statesNeeded: Set = ["mt", "wa", "or", "id", "nv", "ut", "ca", "az"]

var stations = [String: Set<String>]()
stations["kone"] = ["id", "nv", "ut"]
stations["ktwo"] = ["wa", "id", "mt"]
stations["kthree"] = ["or", "nv", "ca"]
stations["kfour"] = ["nv", "ut"]
stations["kfive"] = ["ca", "az"]

var finalStations = Set<String>()

while statesNeeded.count > 0 {
    var bestStation: String? = .none
    var statesCovered = Set<String>()
    
    for (station, stateForStation) in stations {
        let covered = statesNeeded.intersection(stateForStation)
        if covered.count > statesCovered.count {
            bestStation = station
            statesCovered = covered
        }
    }
    
    statesNeeded =  statesNeeded.symmetricDifference(statesCovered)
    finalStations.insert(bestStation!)
}

print(finalStations)


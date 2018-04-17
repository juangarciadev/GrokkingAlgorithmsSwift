// Chapter 7

import Foundation

var graph = [String: [String: Float]]()
graph["start"] = ["a": 6, "b": 2]
graph["a"] = ["fin": 1]
graph["b"] = ["a": 3, "fin": 5]
graph["fin"] = [:]

var infinity = Float.infinity
var costs = [String: Float]()
costs["a"] = 6
costs["b"] = 2
costs["fin"] = infinity

var parents = [String: String?]()
parents["a"] = "start"
parents["b"] = "start"
parents["fin"] = .none

var processed = [String]()

func findLowestCostNode(_ costs: [String: Float]) -> String? {
    var lowestCost = Float.infinity
    var lowestCostNode: String? = .none
    for node in costs.keys {
        let cost: Float = costs[node]!
        if cost < lowestCost && !processed.contains(node) {
            lowestCost = cost
            lowestCostNode = node
        }
    }
    
    return lowestCostNode
}

var node = findLowestCostNode(costs)

while node != .none {
    
    if let neighbors = graph[node!], let cost = costs[node!]  {
        for n in neighbors.keys {
            let newCost = cost + neighbors[n]!
            if costs[n]! > newCost {
                costs[n] = newCost
                print("costs: \(costs)")
                parents[n] = node
                print("parents: \(parents)")
            }
        }
    }
    processed.append(node!)
    node = findLowestCostNode(costs)
}

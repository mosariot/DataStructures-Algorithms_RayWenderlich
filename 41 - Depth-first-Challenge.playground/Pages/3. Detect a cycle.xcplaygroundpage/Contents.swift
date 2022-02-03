// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 ## 3. Detect a cycle
 
 Add a method to `Graph` to detect if a **directed** graph has a cycle.
 */

extension Graph where Element: Hashable {
    
    func hasCycle(from source: Vertex<Element>) -> Bool  {
        
        // Add your code here
        
        return false
    }
    
    
}

//: ![sampleGraph2](sampleGraph2.png)

let graph = AdjacencyList<String>()
let a = graph.createVertex(data: "A")
let b = graph.createVertex(data: "B")
let c = graph.createVertex(data: "C")
let d = graph.createVertex(data: "D")

graph.add(.directed, from: a, to: b, weight: nil)
graph.add(.directed, from: a, to: c, weight: nil)
graph.add(.directed, from: c, to: a, weight: nil)
graph.add(.directed, from: b, to: c, weight: nil)
graph.add(.directed, from: c, to: d, weight: nil)

print(graph)
print(graph.hasCycle(from: a))


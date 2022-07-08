
import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var graph = Array(repeating: [Int](), count: n+1)
    var visited = Array(repeating: false, count: n+1)
    for e in edge {
        graph[e[0]].append(e[1])
        graph[e[1]].append(e[0])
    }
    var queue = [(Int,Int)]()
    var maxValue = 0
    var count = 0
    queue.append((1,0))
    visited[1] = true
    
    while !queue.isEmpty {
        for i in 0..<graph[queue[0].0].count {
            let value = graph[queue[0].0][i]
            if !visited[value] {
                visited[value] = true
                if queue[0].1+1 > maxValue {
                    maxValue = queue[0].1+1
                    count = 0
                }
                if queue[0].1+1 == maxValue {
                    count += 1
                }
                queue.append((value, queue[0].1+1))
            }
        }
        queue.removeFirst()
    }
    
    return count
}

//print(solution(6, [[3, 6], [4, 3], [3, 2], [1, 3], [1, 2], [2, 4], [5, 2]]))

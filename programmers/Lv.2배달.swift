
import Foundation

func solution12978(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var graph = Array(repeating: [(Int,Int)](), count: N+1)
    var visited = Array(repeating: 0, count: N+1)
    for i in road {
        graph[i[0]].append((i[1],i[2]))
        graph[i[1]].append((i[0],i[2]))
    }
    var queue = [(Int,Int)]()
    
    func bfs(_ now:Int) {
        queue.append((now,0))
        while !queue.isEmpty {
            for i in graph[queue[0].0] {
                if i.0 != 1 && queue[0].1 + i.1 <= k && (visited[i.0] == 0 || visited[i.0] > queue[0].1 + i.1 ){
                    visited[i.0] = queue[0].1 + i.1
                    queue.append((i.0, queue[0].1 + i.1))
                }
            }
            queue.removeFirst()
        }
    }
    
    bfs(1)
    return visited.filter{$0>0}.count + 1
}

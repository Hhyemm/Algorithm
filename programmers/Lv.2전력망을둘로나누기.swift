
import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var arr = wires
    var values = [Int]()
    for i in 0..<wires.count {
        arr.remove(at: i)
        values.append(solutionWires(n, arr))
        arr.insert(wires[i], at: i)
    }
    return values.min()!
}

func solutionWires(_ n: Int, _ wires: [[Int]]) -> Int {
    var graph = Array(repeating: [Int](), count: n+1)
    var visited = Array(repeating: false, count: n+1)
    var minus = [Int]()
    var count = 0
    
    for wire in wires {
        graph[wire[0]].append(wire[1])
        graph[wire[1]].append(wire[0])
    }

    func dfs(_ node: Int) {
        visited[node] = true
        count += 1
        for i in graph[node] {
            if !visited[i] {
                dfs(i)
            }
        }
    }
    
    for i in 1..<n {
        count = 0
        if !visited[i] {
            dfs(i)
            minus.append(count)
        }
    }
    return minus.count == 2 ? minus.max()! - minus.min()! : minus.first!
}

//print(solution(9, [[1,3],[2,3],[3,4],[4,5],[4,6],[4,7],[7,8],[7,9]]))
//print(solution(4, [[1,2],[2,3],[3,4]]))
//print(solution(7, [[1,2],[2,7],[3,7],[3,4],[4,5],[6,7]]))

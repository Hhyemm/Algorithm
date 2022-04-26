
import Foundation

func solution1260() {
    let NMV = readLine()!.split(separator: " ").map{Int($0)!}
    var graph = Array(repeating: [Int](), count: NMV[0]+1)
    var visited1 = Array(repeating: false, count: NMV[0]+1)
    var visited2 = Array(repeating: false, count: NMV[0]+1)
    var result1 = ""
    var result2 = ""

    for _ in 0..<NMV[1] {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        graph[input[0]].append(input[1])
        graph[input[1]].append(input[0])
    }

    func dfs(_ now: Int) {
        visited1[now] = true
        result1 += String("\(now) ")
        for i in graph[now].sorted(by: <) {
            if !visited1[i] {
                dfs(i)
            }
        }
    }


    func bfs(_ now: Int) {
        var queue = [Int]()
        queue.append(now)
        result2 += String("\(now) ")
        visited2[now] = true
        while !queue.isEmpty {
            for i in graph[queue.first!].sorted(by: <) {
                if !visited2[i] {
                    visited2[i] = true
                    queue.append(i)
                    result2 += String("\(i) ")
                }
            }
            queue.removeFirst()
        }
    }

    dfs(NMV[2])
    bfs(NMV[2])
    result1.removeLast()
    result2.removeLast()
    print(result1)
    print(result2)

}

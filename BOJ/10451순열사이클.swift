
import Foundation

func solution10451() {
    let t = Int(readLine()!)!

    for _ in 0..<t{
        let n = Int(readLine()!)!
        var graph = Array(repeating: [Int](), count: n+1)
        var visited = Array(repeating: false, count: n+1)
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        for (i, v) in input.enumerated() {
            graph[i+1].append(v)
        }
        var count = 0
        
        func dfs(_ now: Int) {
            visited[now] = true
            let next = graph[now].first!
            if !visited[next] {
                dfs(next)
            }
        }
        
        for i in 1...n {
            if !visited[i] {
                count += 1
                dfs(i)
            }
        }
        
        print(count)
    }
}


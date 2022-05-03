
import Foundation

func solution11724() {
    let NM = readLine()!.split(separator: " ").map{Int($0)!}
    var graph = Array(repeating: [Int](), count: NM[0]+1)
    var visited = Array(repeating: false, count: NM[0]+1)
    var count = 0

    for _ in 0..<NM[1] {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        graph[input[0]].append(input[1])
        graph[input[1]].append(input[0])
    }

    func dfs(_ now:Int) {
        visited[now] = true
        for i in graph[now] {
            if !visited[i] {
                dfs(i)
            }
        }
    }

    for i in 1...NM[0] {
        if !visited[i] {
            count += 1
            dfs(i)
        }
    }

    print(count)
}

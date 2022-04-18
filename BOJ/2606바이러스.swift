
import Foundation

func solution2606() {
    let n = Int(readLine()!)!
    let conection = Int(readLine()!)!
    var visited = Array(repeating: false, count: n+1)
    var graph = Array(repeating: [Int](), count: n+1)
    var result = 0

    for _ in 0..<conection {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        graph[input[0]].append(input[1])
        graph[input[1]].append(input[0])
    }

    func dfs(_ now: Int){
        visited[now] = true
        for i in graph[now] {
            if !visited[i] {
                result += 1
                dfs(i)
            }
        }
    }
    
    dfs(1)
    print(result)
}


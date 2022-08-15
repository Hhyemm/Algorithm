
import Foundation

func solution15650() {
    let NM = readLine()!.split(separator: " ").map{Int($0)!}
    let N = NM[0]
    let M = NM[1]
    var visited = Array(repeating: false, count: N+1)

    func dfs(_ index: Int, _ value: String) {
        if value.count == M {
            print(value.map{String($0)}.joined(separator: " "))
            return
        }
        for i in index...N {
            if !visited[i-1] {
                visited[i-1] = true
                dfs(i, value+String(i))
                visited[i-1] = false
            }
        }
    }

    dfs(1, "")
}

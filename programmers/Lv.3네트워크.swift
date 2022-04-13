
import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var visited = Array(repeating: false, count: n)
    var count = 0
    for i in 0..<n {
        if !visited[i] {
            count += 1
            dfs(i)
        }
    }
    func dfs(_ now: Int) {
        visited[now] = true
        for i in 0..<computers[now].count {
            if !visited[i] && computers[now][i] == 1 {
                dfs(i)
            }
        }
    }
    return count
}

//print(solution(3, [[1, 1, 0], [1, 1, 0], [0, 0, 1]]))
//print(solution(3, [[1, 1, 0], [1, 1, 1], [0, 1, 1]]))

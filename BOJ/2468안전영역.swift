
import Foundation

func solution2468() {
    let n = Int(readLine()!)!
    var graph = [[Int]]()
    var maxValue = 0
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        maxValue = max(input.max()!, maxValue)
        graph.append(input)
    }
    var visited = [[Bool]]()
    let dx = [-1, 0, 1, 0]
    let dy = [0, -1, 0, 1]
    var result = Array(repeating: 0, count: maxValue+1)

    func dfs(_ a:Int, _ b:Int, _ num: Int) {
        for i in 0..<4 {
            let nx = a + dx[i]
            let ny = b + dy[i]
            
            if nx < 0 || nx == n || ny < 0 || ny == n {
                continue
            }

            if !visited[nx][ny] && graph[nx][ny] > num {
                visited[nx][ny] = true
                dfs(nx, ny, num)
            }
        }
    }

    for k in 0...maxValue {
        visited = Array(repeating: Array(repeating: false, count: n+1), count: n+1)
        for i in 0..<n {
            for j in 0..<n {
                if !visited[i][j] && graph[i][j] > k {
                    result[k] += 1
                    dfs(i, j, k)
                }
            }
        }
    }

    print(result.max()!)
}

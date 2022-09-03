
import Foundation

func solution1926() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    let n = nm[0]
    let m = nm[1]
    var graph = [[Int]]()
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    var queue = [(Int,Int)]()
    var dx = [-1, 0, 1, 0]
    var dy = [0, -1, 0, 1]
    var result = [Int]()
    var index = 0

    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        graph.append(input)
    }

    func bfs (_ a:Int, _ b:Int) {
        queue.append((a,b))
        visited[a][b] = true
        var count = 1
        while index < queue.count {
            for i in 0..<4 {
                let nx = queue[index].0 + dx[i]
                let ny = queue[index].1 + dy[i]
                
                if nx < 0 || nx >= n || ny < 0 || ny >= m {
                    continue
                }
                
                if !visited[nx][ny] && graph[nx][ny] == 1 {
                    visited[nx][ny] = true
                    queue.append((nx, ny))
                    count += 1
                }
            }
            index += 1
        }
        result.append(count)
    }

    for i in 0..<n {
        for j in 0..<m {
            if !visited[i][j] && graph[i][j] == 1 {
                bfs(i, j)
            }
        }
    }

    print(result.count)
    print(result.isEmpty ? 0 : result.max()!)
}

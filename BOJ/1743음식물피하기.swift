
import Foundation

func solution1743() {
    let NMK = readLine()!.split(separator: " ").map{Int($0)!}
    let N = NMK[0]
    let M = NMK[1]
    let K = NMK[2]
    var graph = Array(repeating: Array(repeating: 0, count: M+1), count: N+1)
    for _ in 0..<K {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        graph[input[0]][input[1]] = 1
    }
    var queue = [(Int,Int)]()
    var visited = Array(repeating: Array(repeating: false, count: M+1), count: N+1)
    let dx = [-1, 0, 1, 0]
    let dy = [0, -1, 0, 1]
    var result = 0

    func bfs(_ a:Int, _ b:Int) -> Int {
        visited[a][b] = true
        queue.append((a,b))
        var count = 1
        while !queue.isEmpty {
            for i in 0..<4 {
                let nx = queue[0].0 + dx[i]
                let ny = queue[0].1 + dy[i]
                
                if nx <= 0 || nx > N || ny <= 0 || ny > M {
                    continue
                }
                
                if !visited[nx][ny] && graph[nx][ny] == 1 {
                    queue.append((nx,ny))
                    visited[nx][ny] = true
                    count += 1
                }
            }
            queue.removeFirst()
        }
        return count
    }

    for i in 1...N {
        for j in 1...M {
            if !visited[i][j] && graph[i][j] == 1 {
                result = max(result, bfs(i, j))
            }
        }
    }

    print(result)

}


import Foundation

func solution1303() {
    let NM = readLine()!.split(separator: " ").map{Int($0)!}
    let N = NM[0]
    let M = NM[1]
    var land = [[String]]()
    for _ in 0..<M{
        land.append(readLine()!.map{String($0)})
    }
    var visited = Array(repeating: Array(repeating: false, count: N+1), count: M+1)
    var queue = [(Int,Int)]()
    let dx = [-1, 0, 1, 0]
    let dy = [0, -1, 0, 1]
    var w = 0
    var b = 0

    func bfs(_ a: Int, _ b: Int, state: String) -> Int {
        queue.append((a,b))
        visited[a][b] = true
        var cnt = 1
        while !queue.isEmpty {
            for i in 0..<4 {
                let nx = queue[0].0 + dx[i]
                let ny = queue[0].1 + dy[i]
                
                if nx < 0 || nx >= M || ny < 0 || ny >= N {
                    continue
                }
                
                if !visited[nx][ny] && land[nx][ny] == state {
                    queue.append((nx,ny))
                    visited[nx][ny] = true
                    cnt += 1
                }
            }
            queue.removeFirst()
        }
        return cnt
    }

    for i in 0..<M {
        for j in 0..<N {
            if land[i][j] == "W" && !visited[i][j] {
                let x = bfs(i, j, state: "W")
                w += x * x
            }
            if land[i][j] == "B" && !visited[i][j] {
                let x = bfs(i, j, state: "B")
                b += x * x
            }
        }
    }

    print(w, b)
}

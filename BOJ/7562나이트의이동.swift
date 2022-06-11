
import Foundation

func solution7562() {
    let t = Int(readLine()!)!
    let dx = [1, 2, 2, 1, -1, -2, -2, -1]
    let dy = [2, 1, -1, -2, -2, -1, 1, 2]

    for _ in 0..<t {
        let length = Int(readLine()!)!
        let now = readLine()!.split(separator: " ").map{Int($0)!}
        let reach = readLine()!.split(separator: " ").map{Int($0)!}
        var visited = Array(repeating: Array(repeating: false, count: length), count: length)
        var chess = Array(repeating: Array(repeating: 0, count: length), count: length)
        var queue = [(now[0],now[1])]
        var result = [Int]()
        
        if queue[0].0 == reach[0] && queue[0].1 == reach[1] {
            result.append(0)
        }
        
        while !queue.isEmpty {
            for i in 0..<8 {
                let nx = dx[i] + queue[0].0
                let ny = dy[i] + queue[0].1
                
                if nx <= -1 || nx >= length || ny <= -1 || ny >= length {
                    continue
                }
                
                if !visited[nx][ny] {
                    chess[nx][ny] = chess[queue[0].0][queue[0].1] + 1
                    visited[nx][ny] = true
                    queue.append((nx,ny))
                    
                    if nx == reach[0] && ny == reach[1] {
                        result.append(chess[nx][ny])
                        visited[nx][ny] = false
                    }
                }
            }
            queue.removeFirst()
        }
        print(result.min()!)
    }
}

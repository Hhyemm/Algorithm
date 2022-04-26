
import Foundation

func solution2178() {
    let NM = readLine()!.split(separator: " ").map{Int($0)!}
    var maze = [[Int]]()
    var queue = [(0,0)]
    var visited = Array(repeating: Array(repeating: false, count: NM[1]), count: NM[0])
    var count = 1
    for _ in 0..<NM[0] {
        let input = String(readLine()!).map{Int(String($0))!}
        maze.append(input)
    }

    var dx = [-1, 0, 1, 0]
    var dy = [0, -1, 0, 1]
    visited[0][0] = true

    while !queue.isEmpty {
        for i in 0..<4 {
            let nx = queue[0].0 + dx[i]
            let ny = queue[0].1 + dy[i]
            if nx == -1 || nx == NM[0] || ny == -1 || ny == NM[1] {
                continue
            }
            if !visited[nx][ny] && maze[nx][ny] == 1 {
                maze[nx][ny] = maze[queue[0].0][queue[0].1] + 1
                queue.append((nx,ny))
                
            }
            visited[nx][ny] = true
        }
        queue.removeFirst()
    }
    
    print(maze[NM[0]-1][NM[1]-1])
}



import Foundation

func solution7576() {
    let MN = readLine()!.split(separator: " ").map{Int($0)!}
    var tomato = [[Int]]()
    for _ in 0..<MN[1] {
        tomato.append(readLine()!.split(separator: " ").map{Int($0)!})
    }
    let dx = [-1, 0, 1, 0]
    let dy = [0, -1, 0, 1]
    var queue = [(Int,Int)]()
    var empty = 0
    var count = 0
    var result = 1

    func bfs() {
        var index = 0
        while index < queue.count {
            for i in 0..<4 {
                let nx = queue[index].0 + dx[i]
                let ny = queue[index].1 + dy[i]
                
                if nx == -1 || nx >= MN[1] || ny == -1 || ny >= MN[0] {
                    continue
                }
                
                if tomato[nx][ny] == 0 {
                    tomato[nx][ny] = tomato[queue[index].0][queue[index].1]+1
                    queue.append((nx,ny))
                    count += 1
                    result = max(result, tomato[nx][ny])
                }
            }
            index += 1
        }
    }

    for i in 0..<MN[1] {
        for j in 0..<MN[0] {
            if tomato[i][j] == 1 {
                queue.append((i,j))
                count += 1
            } else if tomato[i][j] == -1 {
                empty += 1
            }
        }
    }

    bfs()
    print(MN[0]*MN[1]-count-empty == 0 ? result-1 : -1)


}

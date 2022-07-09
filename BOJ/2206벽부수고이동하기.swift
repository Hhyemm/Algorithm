
import Foundation

func solution2206() {
    let NK = readLine()!.split(separator: " ").map{Int($0)!}
    let N = NK[0]
    let K = NK[1]
    var road = [[Int]]()
    var check = Array(repeating: Array(repeating: Array(repeating: false, count: 2), count: K+1), count: N+1)
    var queue = [(Int,Int,Int,Int)]()
    let dx = [-1, 0, 1, 0]
    let dy = [0, -1, 0, 1]
    var result = -1

    for _ in 0..<N {
        road.append(readLine()!.map{Int(String($0))!})
    }

    queue.append((0,0,1,1))
    check[0][0][0] = true

    var index = 0
    while index < queue.count {
        if queue[index].0 == N-1 && queue[index].1 == K-1 {
            result = queue[index].3
            break
        }
        for i in 0..<4 {
            let nx = queue[index].0 + dx[i]
            let ny = queue[index].1 + dy[i]
            
            if nx < 0 || nx >= N || ny < 0 || ny >= K {
                continue
            }
            
            if !check[nx][ny][queue[index].2] && queue[index].2 == 1 && road[nx][ny] == 1{
                check[nx][ny][queue[index].2] = true
                queue.append((nx, ny, 0, queue[index].3+1))
            }
            if !check[nx][ny][queue[index].2] && road[nx][ny] == 0 {
                check[nx][ny][queue[index].2] = true
                queue.append((nx, ny, queue[index].2, queue[index].3+1))
            }
        }
        index += 1
    }

    print(result)
}

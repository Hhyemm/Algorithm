
import Foundation

func solution2583() {
    let MNK = readLine()!.split(separator: " ").map{Int($0)!}
    let M = MNK[0]
    let N = MNK[1]
    let K = MNK[2]
    var square = Array(repeating: Array(repeating: 0, count: N), count: M)
    for _ in 0..<K {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        for i in input[0]..<input[2] {
            for j in input[1]..<input[3] {
                square[M-j-1][i] = 1
            }
        }
    }
    let dx = [-1, 0, 1, 0]
    let dy = [0, -1, 0, 1]
    var queue = [(Int,Int)]()
    var totalCount = 0
    var result = [Int]()
    var count = 0

    func bfs(_ a: Int, _ b:Int) {
        queue.append((a,b))
        square[a][b] = -1
        count += 1
        while !queue.isEmpty {
            for i in 0..<4 {
                let nx = queue[0].0 + dx[i]
                let ny = queue[0].1 + dy[i]
                
                if nx < 0 || nx == M || ny < 0 || ny == N {
                    continue
                }
                
                if square[nx][ny] == 0 {
                    square[nx][ny] = -1
                    count += 1
                    queue.append((nx,ny))
                }
            }
            queue.removeFirst()
        }

    }

    for i in 0..<M {
        for j in 0..<N {
            if square[i][j] == 0 {
                totalCount += 1
                count = 0
                bfs(i, j)
                result.append(count)
            }
        }
    }

    print(totalCount)
    print(result.sorted(by: <).map{String($0)}.joined(separator: " "))
    
}

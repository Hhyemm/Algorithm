
import Foundation

func solution1012() {
    let T = Int(readLine()!)!
    var dx = [-1,0,1,0]
    var dy = [0,-1,0,1]
    for _ in 0..<T {
        let NMK = readLine()!.split(separator: " ").map{Int($0)!}
        var visited = Array(repeating: Array(repeating: false, count: NMK[1]+1), count: NMK[0]+1)
        var land = Array(repeating: Array(repeating: 0, count: NMK[1]+1), count: NMK[0]+1)
        var count = 0
        
        for _ in 0..<NMK[2] {
            let input = readLine()!.split(separator: " ").map{Int($0)!}
            land[input[0]][input[1]] = 1
        }

        func dfs(_ a: Int, _ b: Int) {
            visited[a][b] = true
            for i in 0..<4 {
                let nx = dx[i]+a
                let ny = dy[i]+b
                if nx == -1 || nx > NMK[0]+1 || ny == -1 || ny > NMK[1]+1 {
                    continue
                }
                if land[nx][ny] == 1 && !visited[nx][ny] {
                    dfs(nx, ny)
                }
            }
        }
        
        for i in 0..<land.count {
            for j in 0..<land[i].count {
                if land[i][j] == 1 && !visited[i][j] {
                    count += 1
                    dfs(i, j)
                }
            }
        }
        print(count)
    }
}


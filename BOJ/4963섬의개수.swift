
import Foundation

func solution4963() {
    let dx = [-1, 0, 1, -1, 1, -1, 0, 1]
    let dy = [1, 1, 1, 0, 0, -1, -1, -1]

    while true {
        let wh = readLine()!.split(separator: " ").map{Int($0)!}
        if wh == [0,0] {
            break
        }
        let w = wh[0]
        let h = wh[1]
        var visited = Array(repeating: Array(repeating: false, count: w+1), count: h+1)
        var land = [[Int]]()
        var count = 0

        for _ in 0..<h {
            let input = readLine()!.split(separator: " ").map{Int($0)!}
            land.append(input)
        }
        
        
        func dfs(_ a:Int, _ b:Int) {
            visited[a][b] = true
            for i in 0..<8 {
                let nx = a + dx[i]
                let ny = b + dy[i]
                
                if nx <= -1 || nx >= h || ny <= -1 || ny >= w {
                    continue
                }

                if !visited[nx][ny] && land[nx][ny] == 1 {
                    dfs(nx, ny)
                }
            }
        }
        
        for i in 0..<h {
            for j in 0..<w {
                if !visited[i][j] && land[i][j] == 1 {
                    count += 1
                    dfs(i, j)
                }
            }
        }
        
        print(count)
    }
}

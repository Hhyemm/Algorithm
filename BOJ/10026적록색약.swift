
import Foundation

func solution10026() {
    let n = Int(readLine()!)!
    var graph = [[String]]()
    var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 2), count: n+1), count: n+1)
    let dx = [-1, 0, 1, 0]
    let dy = [0, -1, 0, 1]
    var r = 0
    var g = 0
    var b = 0
    var rg = 0

    for _ in 0..<n {
        graph.append(readLine()!.map{String($0)})
    }

    func dfs(_ a:Int, _ b:Int, _ color:String, _ state: Int) {
        visited[a][b][state] = true
        
        for i in 0..<4 {
            let nx = a + dx[i]
            let ny = b + dy[i]
            
            if nx < 0 || nx == n || ny < 0 || ny == n {
                continue
            }
            
            if !visited[nx][ny][state] && state == 0 && graph[nx][ny] == color {
                dfs(nx, ny, color, state)
            }
            
            if !visited[nx][ny][state] && state == 1 {
                if graph[nx][ny] == "R" {
                    dfs(nx, ny, "R", 1)
                } else if graph[nx][ny] == "G" {
                    dfs(nx, ny, "G", 1)
                }
            }
            
        }
    }

    for i in 0..<n {
        for j in 0..<n {
            if !visited[i][j][0] && graph[i][j] == "R" {
                r += 1
                dfs(i, j, "R", 0)
            }
            if !visited[i][j][0] && graph[i][j] == "G" {
                g += 1
                dfs(i, j, "G", 0)
            }
            if !visited[i][j][0] && graph[i][j] == "B" {
                b += 1
                dfs(i, j, "B", 0)
            }
            
            if !visited[i][j][1] && (graph[i][j] == "R" || graph[i][j] == "G") {
                if graph[i][j] == "R" {
                    rg += 1
                    dfs(i, j, "R", 1)
                } else {
                    rg += 1
                    dfs(i, j, "G", 1)
                }
            }
        }
    }
    
    print(r+g+b, rg+b)
}


import Foundation

func solution2667() {
    let N = Int(readLine()!)!
    let dx = [-1,0,1,0]
    let dy = [0,-1,0,1]
    var result = 0
    var count = 0
    var countArr = [Int]()
    var map = [[Int]]()
    var visited = Array(repeating: Array(repeating: false, count: N+1), count: N+1)

    for _ in 0..<N {
        let input = readLine()!
        map.append(input.map{Int(String($0))!})
    }

    func dfs(_ a: Int, _ b: Int) {
        count += 1
        visited[a][b] = true
        for i in 0..<4 {
            let nx = dx[i] + a
            let ny = dy[i] + b
            if nx == -1 || nx > N-1 || ny == -1 || ny > N-1 {
                continue
            }
            if !visited[nx][ny] && map[nx][ny] == 1 {
                dfs(nx, ny)
            }
        }
    }

    for i in 0..<N {
        for j in 0..<N {
            if !visited[i][j] && map[i][j] == 1 {
                count = 0
                result += 1
                dfs(i, j)
                countArr.append(count)
            }
        }
    }
    
    print(result)
    for i in countArr.sorted(by: <) {
        print(i)
    }
}

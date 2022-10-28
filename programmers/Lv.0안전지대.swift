
import Foundation

func solution120866(_ board:[[Int]]) -> Int {
    let dx = [-1, -1, -1, 0, 0, 1, 1, 1]
    let dy = [0, -1, 1, 1, -1, 1, 0, -1]
    var result = 0
    
    for i in 0..<board.count {
        for j in 0..<board.count {
            var state = false
            if board[i][j] == 1 {
                continue
            }
            for k in 0..<8 {
                let nx = i + dx[k]
                let ny = j + dy[k]
                
                if nx < 0 || nx >= board.count || ny < 0 || ny >= board.count {
                    continue
                }
                if board[nx][ny] == 1 {
                    state = true
                    break
                }
            }
            if !state {
            result += 1
            }
        }
    }
    return result
}

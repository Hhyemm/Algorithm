
import Foundation

func solution(_ board:[[Int]]) -> Int {
    var visited = board
    var maxValue = 0
    if board[0].count == 1 || board.map({$0}).count == 1 {
        return 1
    }
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if i == 0 || j == 0 {
                continue
            } else if visited[i-1][j] != 0 && visited[i][j-1] != 0 && visited[i-1][j-1] != 0 && visited[i][j] != 0 {
                visited[i][j] += min(visited[i-1][j], visited[i][j-1], visited[i-1][j-1])
            }
            maxValue = max(visited[i][j], maxValue)
        }
    } 
    return Int(pow(Double(maxValue), 2))
}

/*
print(solution([[1,1,1],[1,0,1],[1,1,1]]))
print(solution([[1,1,1,1],[0,1,1,1],[0,1,1,1]]))
print(solution([[1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [0, 0, 1, 1, 1]]))
print(solution([[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]]))
print(solution([[0,0,1,1],[1,1,1,1]]))
*/

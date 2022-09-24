
import Foundation

func solution68936(_ arr:[[Int]]) -> [Int] {
    var visited = Array(repeating: Array(repeating: false, count: arr.count), count: arr.count)
    var result = [0,0]
    func find(_ a: Int, _ b:Int, _ range:Int) {
        var values = [0,0]
        for i in a..<a+range {
            for j in b..<b+range {
                values[arr[i][j]] = 1
                if values[0] == 1 && values[1] == 1 {
                    return
                }
            }
        }
        for i in a..<a+range {
            for j in b..<b+range {
                visited[i][j] = true
            }
        }
        result[arr[a][b]] -= range * range
        result[arr[a][b]] += 1
    }
    
    var count = arr.count
    while count > 0 {
        for i in 0..<arr.count {
            for j in 0..<arr.count {
                if count == 1 {
                    result[arr[i][j]] += 1
                }
                if i % count == 0 && j % count == 0 && !visited[i][j] {
                    find(i, j, count)
                }
            }
        }
        count /= 2
    }
    return result
}

//print(solution([[1,1,0,0],[1,0,0,0],[1,0,0,1],[1,1,1,1]]))
//print(solution([[1,1,1,1,1,1,1,1],[0,1,1,1,1,1,1,1],[0,0,0,0,1,1,1,1],[0,1,0,0,1,1,1,1],[0,0,0,0,0,0,1,1],[0,0,0,0,0,0,0,1],[0,0,0,0,1,0,0,1],[0,0,0,0,1,1,1,1]]))


import Foundation

func solution77485(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var result = [Int]()
    var arr = Array(repeating: Array(repeating: 0, count: columns), count: rows)
        for i in 0..<rows {
            for j in 1...columns {
                arr[i][j-1] = i*columns+j
            }
        }

    var q = arr
    for query in queries {
        var values = [Int]()
        q[query[0]-1][query[1]-1] = arr[query[0]][query[1]-1]
        values.append(q[query[0]-1][query[1]-1])
        for i in query[1]..<query[3] {
            q[query[0]-1][i] = arr[query[0]-1][i-1]
            values.append(q[query[0]-1][i])
        }
        for i in query[0]..<query[2]-1 {
            q[i][query[1]-1] = arr[i+1][query[1]-1]
            values.append(q[i][query[1]-1])
            q[i][query[3]-1] = arr[i-1][query[3]-1]
            values.append(q[i][query[3]-1])
        }
        for i in query[1]-1..<query[3]-1 {
            q[query[2]-1][i] = arr[query[2]-1][i+1]
            values.append(q[query[2]-1][i])
        }
        q[query[2]-1][query[3]-1] = arr[query[2]-2][query[3]-1]
        values.append(q[query[2]-1][query[3]-1])
        arr = q
        result.append(values.min()!)
    }
    return result
}

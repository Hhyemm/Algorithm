
import Foundation

public func solution_MaxProfit(_ A : [Int]) -> Int {
    var result = 0
    var maxValue = 0
    for i in stride(from: A.count-1, through: 0, by: -1) {
        result = max(maxValue - A[i], result)
        maxValue = max(A[i], maxValue)
    }
    return result
}

// print(solution([23171, 21011, 21123, 21366, 21013, 21367]))


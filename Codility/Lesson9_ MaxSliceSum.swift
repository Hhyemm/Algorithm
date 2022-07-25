
import Foundation

public func solution_MaxSliceSum(_ A : inout [Int]) -> Int {
    var dp = Array(repeating: A[0], count: A.count)
    for i in 1..<A.count {
        dp[i] = max(dp[i-1]+A[i], A[i])
    }
    return dp.max()!
}

//print(solution([3, 2, -6, 4, 0]))
//print(solution([-10]))
//print(solution([1,1]))

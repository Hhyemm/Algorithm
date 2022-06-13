
import Foundation

func solution(_ n:Int) -> Int {
    var dp = Array(repeating: 0, count: 2001)
    dp[1] = 1
    dp[2] = 2
    
    if n >= 3 {
        for i in 3...n {
            dp[i] = dp[i-2] + dp[i-1] % 1234567
        }
    }
    return dp[n]
}


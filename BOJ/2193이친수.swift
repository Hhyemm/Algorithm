
import Foundation

func solution2193() {
    let n = Int(readLine()!)!
    var dp = Array(repeating: 1, count: 91)

    if n > 2 {
        for i in 3...n {
            dp[i] = dp[i-1] + dp[i-2]
        }
    }
    
    print(dp[n])
}

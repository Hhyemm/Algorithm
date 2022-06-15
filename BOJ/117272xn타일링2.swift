
import Foundation

func solution11727() {
    let n = Int(readLine()!)!
    var dp = Array(repeating: 0, count: 1001)

    dp[1] = 1
    dp[2] = 3

    if n > 2 {
        for i in 3...n {
            dp[i] = (dp[i-2]*2 + dp[i-1]) % 10007
        }
    }
    print(dp[n])
}

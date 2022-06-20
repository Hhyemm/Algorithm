
import Foundation

func solution1699() {
    let n = Int(readLine()!)!
    var dp = Array(repeating: 0, count: n+1)

    for i in 1...n {
        dp[i] = i
        for j in 1...i {
            if j * j > i {
                break
            }
            dp[i] = min(dp[i-(j*j)]+1, dp[i])
        }
    }
    print(dp[n])

}

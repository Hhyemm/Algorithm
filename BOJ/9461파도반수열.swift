
import Foundation

func solution9461() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let n = Int(readLine()!)!
        var dp = Array(repeating: 0, count: 101)
        dp[1] = 1
        dp[2] = 1
        dp[3] = 1
        dp[4] = 2
        if n > 4 {
            for i in 5...n {
                dp[i] = dp[i-1] + dp[i-5]
            }
        }
        print(dp[n])
    }
}

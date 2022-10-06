
import Foundation

func solution1103() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let n = Int(readLine()!)!
        var dp = Array(repeating: (0,0), count: n+1)
        if n >= 0 {
            dp[0] = (1,0)
        }
        if n >= 1 {
            dp[1] = (0,1)
        }
        if n >= 2 {
            for i in 2...n {
                dp[i] = (dp[i-1].0 + dp[i-2].0, dp[i-1].1 + dp[i-2].1)
            }
        }
        print(dp[n].0, dp[n].1)
    }
}

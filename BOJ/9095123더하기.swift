
import Foundation

func solution9095() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let n = Int(readLine()!)!
        var dp = Array(repeating: 0, count: 11)
        dp[1] = 1
        dp[2] = 2
        dp[3] = 4
        
        if n > 3 {
            for i in 4...n {
                dp[i] = dp[i-3]+dp[i-2]+dp[i-1]
            }
        }
        print(dp[n])
    }
}

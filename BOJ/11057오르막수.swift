
import Foundation

func solution11057() {
    let n = Int(readLine()!)!
    var dp = Array(repeating: Array(repeating: 1, count: 10), count: 1001)
    let mod = 10007

    if n > 1 {
        for i in 2...n {
            for j in 0...9 {
                dp[i][j] = (j...9).map{dp[i-1][$0]}.reduce(0, +) % mod
            }
        }
    }
    print(dp[n].reduce(0, +) % mod)
}

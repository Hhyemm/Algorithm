
import Foundation

func solution2225() {
    let NK = readLine()!.split(separator: " ").map{Int($0)!}
    let N = NK[0]
    let K = NK[1]
    var dp = Array(repeating: Array(repeating: 0, count: K+1), count: N+1)
    let mod = 1000000000

    for i in 1...K {
        dp[0][i] = 1
    }

    for i in 1...N {
        for j in 1...K {
            dp[i][j] = (dp[i-1][j] + dp[i][j-1]) % mod
        }
    }

    print(dp[N][K])

}

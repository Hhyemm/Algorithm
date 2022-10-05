
import Foundation

func solution12852() {
    let n = Int(readLine()!)!
    var dp = Array(repeating: (0, 0), count: n+1)
    var result = [String]()

    dp[1].0 = 0
    if n > 1 {
        for i in 2...n {
            dp[i] = (dp[i-1].0 + 1, i-1)
            if i % 3 == 0 && dp[i/3].0 + 1 < dp[i].0 {
                dp[i] = (dp[i/3].0 + 1, i/3)
            }
            if i % 2 == 0 && dp[i/2].0 + 1 < dp[i].0 {
                dp[i] = (dp[i/2].0 + 1, i/2)
            }
        }
    }

    var value = n
    while !result.contains("1") {
        result.append(String(value))
        value = dp[value].1
    }

    print(dp[n].0)
    print(result.joined(separator: " "))
}

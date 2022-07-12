
import Foundation

func solution1149() {
    let n = Int(readLine()!)!
    var arr = [[Int]]()
    for _ in 0..<n {
        arr.append(readLine()!.split(separator: " ").map{Int($0)!})
    }
    var dp = Array(repeating: Array(repeating: 0, count: 3), count: n+1)

    for i in 1...arr.count {
            dp[i][0] = min(dp[i-1][1]+arr[i-1][0], dp[i-1][2]+arr[i-1][0])
            dp[i][1] = min(dp[i-1][0]+arr[i-1][1], dp[i-1][2]+arr[i-1][1])
            dp[i][2] = min(dp[i-1][0]+arr[i-1][2], dp[i-1][1]+arr[i-1][2])
    }

    print(dp[n].min()!)
}

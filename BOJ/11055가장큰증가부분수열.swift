
import Foundation

func solution11055() {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    var dp = Array(repeating: 0, count: n+1)

    for i in 1...n {
        dp[i] = arr[i-1]
        for j in 1...i {
            if arr[i-1] > arr[j-1] {
                dp[i] = max(dp[j]+arr[i-1], dp[i])
            }
        }
    }

    print(dp.max()!)
}


import Foundation

func solution11053() {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    var dp = Array(repeating: 1, count: n+1)

    for i in 1...n {
        for j in 1...i {
            if arr[i-1] > arr[j-1] {
                dp[i] = max(dp[i], dp[j]+1)
            }
        }
    }

    print(dp.max()!)
}

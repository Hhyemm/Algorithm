
import Foundation

func solution1912() {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    var dp = Array(repeating: 0, count: n+1)

    dp[1] = arr[0]

    if n > 1 {
        for i in 2...n{
            dp[i] = max(dp[i-1]+arr[i-1], arr[i-1])
        }
    }

    dp.removeFirst()
    print(dp.max()!)
}

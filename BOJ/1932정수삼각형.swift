
import Foundation

func solution1932() {
    let n = Int(readLine()!)!
    var arr = [[Int]]()

    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        arr.append(input)
    }
    var dp = Array(repeating: Array(repeating: arr[0][0], count: n+1), count: n+1)

    for i in 1..<n {
        for j in 0...i {
            if j-1 < 0 {
                dp[i][j] = dp[i-1][j] + arr[i][j]
            } else if j+1 > i {
                dp[i][j] = dp[i-1][j-1] + arr[i][j]
            } else {
                dp[i][j] = max(dp[i-1][j-1], dp[i-1][j])+arr[i][j]
            }
        }
    }
    print(dp[n-1].max()!)
}

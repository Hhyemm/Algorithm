
import Foundation

func solution9465() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let n = Int(readLine()!)!
        var dp = Array(repeating: Array(repeating: 0, count: 2), count: n+1)
        var arr = [[Int]]()
        for _ in 0...1 {
            let input = readLine()!.split(separator: " ").map{Int($0)!}
            arr.append(input)
        }
        dp[1][0] = arr[0][0]
        dp[1][1] = arr[1][0]
        if n >= 2 {
            dp[2][0] = arr[1][0] + arr[0][1]
            dp[2][1] = arr[0][0] + arr[1][1]
        }
        if n > 2 {
            for i in 3...n {
                dp[i][0] = max(dp[i-2][1] + arr[0][i-1], dp[i-1][1] + arr[0][i-1])
                dp[i][1] = max(dp[i-2][0] + arr[1][i-1], dp[i-1][0] + arr[1][i-1])
            }
        }
        print(dp[n].max()!)
    }
}


import Foundation

func solution14501(){
    let n = Int(readLine()!)!
    var arr = [[Int]]()
    var dp = Array(repeating: 0, count: n+2)

    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        arr.append(input)
    }

    for i in stride(from: n, through: 1, by: -1) {
        if i + arr[i-1][0]-1 > n {
            dp[i] = dp[i+1]
        } else {
            dp[i] = max(dp[i+1], dp[i + arr[i-1][0]]+arr[i-1][1])
        }
    }
    print(dp.max()!)
}


import Foundation

func solution11659() {
    let NM = readLine()!.split(separator: " ").map{Int($0)!}
    let N = NM[0]
    let M = NM[1]
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    var dp = Array(repeating: 0, count: N+1)
    for i in 1...N {
        dp[i] = dp[i-1] + arr[i-1]
    }
    for _ in 0..<M {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        print(dp[input[1]]-dp[input[0]-1])
    }
}

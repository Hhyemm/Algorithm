
import Foundation

// 그리디
func solution2839_1() {
    var N = Int(readLine()!)!
    var result = 0

    func greedy() -> Int{
        while N >= 3 {
            if N % 5 == 0 {
                result += N / 5
                return result
            }
            N -= 3
            result += 1
        }
        return N == 0 ? result : -1
    }

    print(greedy())
}


// dp
func solution2839_2() {
    let N = Int(readLine()!)!
    var dp = Array(repeating: N+1, count: N+1)

    dp[3] = 1

    if N >= 5 {
        dp[5] = 1
    }
    if N > 5 {
        for i in 6...N {
            dp[i] = min(dp[i-3]+1,dp[i-5]+1)
        }
    }

    print(dp[N] > N ? -1 : dp[N])

}


func solution2839_3() {
    let N = Int(readLine()!)!
    var dp = Array(repeating: N+1, count: N+1)

    dp[3] = 1

    if N >= 5 {
        dp[5] = 1
    }
    if N > 5 {
        for i in 6...N {
            for j in 3..<i {
                if (j % 3 == 0 || j % 5 == 0) && ((i-j) % 3 == 0 || (i-j) % 5 == 0) {
                    dp[i] = min(dp[j]+dp[i-j], dp[i])
                }
            }
        }
    }

    print(dp[N] == N+1 ? -1 : dp[N])
}




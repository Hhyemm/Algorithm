
import Foundation

/*
문제. N행 4열로 이루어진 땅에 점수가 쓰여있다. 1행부터 한 행씩 내려 올 때 같은 열을 연속해서 밟을 수는 없으며 마지막 행까지 내려왔을 때 얻을 수 있는 최대값을 return한다.
 - 이전에 밟은 행을 제외하여 가장 큰 값을 저장한다. 
 - 마지막 열에서 가장 큰 값을 반환한다. 
 */


func solution(_ land:[[Int]]) -> Int{
    var dp = land
    for i in 1..<land.count {
        dp[i][0] = max(dp[i-1][1], dp[i-1][2], dp[i-1][3]) + dp[i][0]
        dp[i][1] = max(dp[i-1][0], dp[i-1][2], dp[i-1][3]) + dp[i][1]
        dp[i][2] = max(dp[i-1][0], dp[i-1][1], dp[i-1][3]) + dp[i][2]
        dp[i][3] = max(dp[i-1][0], dp[i-1][1], dp[i-1][2]) + dp[i][3]
    }
    return max(dp[land.count-1][0], dp[land.count-1][1], dp[land.count-1][2], dp[land.count-1][3])
}

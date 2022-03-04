
import Foundation

/*
 정수 X에 사용할 수 있는 연산은 다음과 같이 세 가지 이다.
 - X가 3으로 나누어 떨어지면, 3으로 나눈다.
 - X가 2로 나누어 떨어지면, 2로 나눈다.
 - 1을 뺀다.
 정수 N이 주어졌을 때, 위와 같은 연산 세 개를 사용해 1을 만들려고 한다. 연산을 사용하는 횟수의 최솟값을 출력한다.
 
 DP문제로 bottom-up방식으로 문제를 해결하였다.
 */

func solution1463() {
    let n = Int(readLine()!)!
    var dp = Array(repeating: 0, count: n+1)

    if n == 1 {
        print(0)
    } else {
        for i in 2...n {
            dp[1] = 0
            dp[i] = dp[i-1] + 1
            if i % 3 == 0 {
                dp[i] = min(dp[i], dp[i/3]+1)
            }
            if i % 2 == 0 {
                dp[i] = min(dp[i], dp[i/2]+1)
            }
        }
        print(dp[n])
    }
}



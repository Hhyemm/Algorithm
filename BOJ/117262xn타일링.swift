
import Foundation

/*
 2xn 크기의 직사각형을 1x2, 2x1 타일로 채우는 방법의 수를 구하는 프로그램을 작성하시오.
 
 - 2x1인 경우, | 1개
 - 2x2인 경우, ||, = 2개
 - 2x3인 경우, |||, =|, |= 3개
 - 2x4인 경우, ||||, ||=, |=|, =||, == 5개
 - 2x5인 경우, |||||, |||=, ||=|, |=||, =|||, |==, =|=, ==| 8개
 점화식은 d[n]=d[n-1]+d[n-2]에 해당한다.
 */

func solution11726() {
    let n = Int(readLine()!)!
    var dp = Array(repeating: 0, count: 1001)

    dp[1] = 1
    dp[2] = 2
    for i in stride(from: 3, through: n, by: 1) {
        dp[i] = (dp[i-1] + dp[i-2]) % 10007
    }
    print(dp[n])
}

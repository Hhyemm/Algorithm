
import Foundation

func solution11054() {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    var dp1 = Array(repeating: 1, count: n+1)
    var dp2 = Array(repeating: 1, count: n+1)
    var maxLength = 0

    for i in 1...n {
        for j in 1...i {
            if arr[i-1] > arr[j-1] {
                dp1[i] = max(dp1[j]+1, dp1[i])
            }
        }
    }

    for i in stride(from: n, through: 1, by: -1){
        for j in stride(from: n, through: i, by: -1) {
            if arr[i-1] > arr[j-1] {
                dp2[i] = max(dp2[j]+1, dp2[i])
            }
        }
    }

    for i in 1...n {
        maxLength = max(dp1[i]+dp2[i], maxLength)
    }

    print(maxLength-1)
}


import Foundation

func solution1789() {
    let n = Int(readLine()!)!
    var sum = 0

    for i in 1...n {
        sum += i
        if sum == n {
            print(i)
            break
        } else if sum > n {
            print(i-1)
            break
        }
    }
}


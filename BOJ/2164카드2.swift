
import Foundation

func solution2164() {
    let n = Int(readLine()!)!
    var arr = Array(1...n)
    var index = 1
    for _ in 0..<n-1 {
        arr.append(arr[index])
        index += 2
    }

    print(arr.last!)
}

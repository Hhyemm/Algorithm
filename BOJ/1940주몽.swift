
import Foundation

func solution1940() {
    let n = Int(readLine()!)!
    let m = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map{Int($0)!}
    var left = 0
    var right = n-1
    var count = 0
    arr.sort(by: <)

    while left < right {
        let a = arr[left]
        let b = arr[right]
        
        if a + b > m {
            right -= 1
        } else if a + b < m {
            left += 1
        } else {
            left += 1
            right -= 1
            count += 1
        }
    }

    print(count)
}

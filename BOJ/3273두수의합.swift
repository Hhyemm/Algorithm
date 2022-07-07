
import Foundation

func solution3273() {
    let N = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map{Int($0)!}
    let X = Int(readLine()!)!
    arr.sort(by: <)
    var count = 0

    var start = 0
    var end = arr.count-1

    while start < end {
        if arr[start] + arr[end] == X {
            count += 1
            start += 1
            end -= 1
        }
        
        if arr[start] + arr[end] < X {
            start += 1
        }
        if arr[start] + arr[end] > X {
            end -= 1
        }
    }

    print(count)
}

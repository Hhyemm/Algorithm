
import Foundation

func solution1541() {
    let input = readLine()!
    let arr = input.split(separator: "-")
    let arr2 = arr.map{$0.split(separator: "+").map{Int($0)!}.reduce(0, +)}
    var result = 0

    for i in 0..<arr2.count {
        if i == 0 {
            result += arr2[i]
        } else {
            result -= arr2[i]
        }
    }
}

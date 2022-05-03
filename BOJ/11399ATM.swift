
import Foundation

func solution11399() {
    _ = Int(readLine()!)!
    let P = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
    var sum = 0
    var result = 0
    for i in P {
        sum += i
        result += sum
    }
    print(result)
}

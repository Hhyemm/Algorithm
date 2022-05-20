
import Foundation

func solution12845() {
    let n = Int(readLine()!)!
    let L = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
    var sum = 0
    let value = L[0]

    for i in 1..<L.count {
        sum += value + L[i]
    }
    print(sum)
}

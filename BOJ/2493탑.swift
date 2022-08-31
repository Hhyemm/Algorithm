
import Foundation

func solution2493() {
    let n = Int(readLine()!)!
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    var result = Array(repeating: 0, count: n)
    var arr = [Int]()
    arr.append(input.count-1)
    for i in stride(from: input.count-2, through: 0, by: -1) {
        while !arr.isEmpty && input[arr.last!] < input[i] {
            let index = arr.removeLast()
            result[index] = i + 1
        }
        arr.append(i)
    }
    print(result.map{String($0)}.joined(separator: " "))
}

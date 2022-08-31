
import Foundation

func solution17298() {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    var result = Array(repeating: -1, count: n)
    var stack = [Int]()

    for i in stride(from: 0, through: arr.count-1, by: 1) {
        while !stack.isEmpty && arr[i] > arr[stack.last!] {
            let index = stack.removeLast()
            result[index] = arr[i]
        }
        stack.append(i)
    }
    print(result.map{String($0)}.joined(separator: " "))
    
}

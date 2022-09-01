
import Foundation

func solution6198() {
    let n = Int(readLine()!)!
    var stack = [Int]()
    var count = 0

    for _ in 0..<n {
        let input = Int(readLine()!)!
        
        while !stack.isEmpty && stack.last! <= input {
            stack.removeLast()
        }
        count += stack.count
        stack.append(input)
    }
    print(count)
}

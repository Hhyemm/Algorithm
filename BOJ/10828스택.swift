
import Foundation

func solution10828() {
    let N = Int(readLine()!)!
    var stack = [String]()
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map{String($0)}
        if input[0] == "push" {
            stack.append(input[1])
        } else if input[0] == "pop" {
            stack.isEmpty ? print(-1) : print(stack.removeLast())
        } else if input[0] == "size" {
            print(stack.count)
        } else if input[0] == "empty" {
            stack.isEmpty ? print(1) : print(0)
        } else if input[0] == "top" {
            stack.isEmpty ? print(-1) : print(stack.last!)
        }
    }
}


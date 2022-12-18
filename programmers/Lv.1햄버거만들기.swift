
import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var stack = ""
    var result = 0
    for i in ingredient {
        stack += String(i)
        if stack.suffix(4) == "1231" {
            result += 1
            for _ in 0..<4 {
                stack.removeLast()
            }
        }
    }
    return result
}

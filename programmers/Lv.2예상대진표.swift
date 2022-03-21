
import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var A = a
    var B = b
    var result = 0
    while A != B {
        if A % 2 == 0 {
            A = A / 2
        } else {
            A = (A / 2) + 1
        }
        if B % 2 == 0 {
            B = B / 2
        } else {
            B = (B / 2) + 1
        }
        result += 1
    }
    return result
}


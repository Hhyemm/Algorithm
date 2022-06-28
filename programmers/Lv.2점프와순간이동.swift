
import Foundation

func solution(_ n:Int) -> Int {
    var n_ = n
    var ans = 0
    while n_ != 0 {
        if n_ % 2 == 1 {
            ans += 1
            n_ -= 1
        }
        n_ /= 2
    }
    return ans
}



import Foundation

func solution132265(_ topping:[Int]) -> Int {
    var left = [Int: Int]()
    var right = [Int: Int]()
    var result = 0
    for i in topping {
        right[i, default: 0] += 1
    }
    for i in topping {
        left[i, default: 0] += 1
        
        if right[i]! > 1 {
            right[i]! -= 1
        } else {
            right[i] = nil
        }
        if left.count == right.count {
            result += 1
        }
    }
    return result
}

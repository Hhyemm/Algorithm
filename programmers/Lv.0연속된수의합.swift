
import Foundation

func solution120923(_ num:Int, _ total:Int) -> [Int] {
    var result = [Int]()
    for i in -total-num...total+num {
        result.append(i)
        if result.reduce(0, +) == total && result.count == num {
            return result
        }
        if result.reduce(0, +) > total || result.count >= num {
            result.removeFirst()
        }
    }
    return result
}

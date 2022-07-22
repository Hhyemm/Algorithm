
import Foundation

public func solution_PassingCars(_ A : inout [Int]) -> Int {
    var a = 0
    var result = 0
    for i in 0..<A.count {
        if A[i] == 0 {
            a += 1
        } else {
            result += a * 1
        }
    }
    return result > 1_000_000_000 ? -1 : result
}

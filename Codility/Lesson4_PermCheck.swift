
import Foundation

public func solution_PermCheck(_ A : inout [Int]) -> Int {
    let A = A.sorted(by: <)
    for i in 0..<A.count {
        if A[i] != i+1 {
            return 0
        }
    }
    return 1
}

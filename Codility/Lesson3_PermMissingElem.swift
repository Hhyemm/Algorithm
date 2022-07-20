
import Foundation

public func solution_PermMissingElem(_ A : inout [Int]) -> Int {
    if !A.isEmpty {
        let A = A.sorted(by: <)
        for i in 0..<A.count {
            if A[i] != i+1 {
                return i+1
            }
        }
    }
    return A.count+1
}

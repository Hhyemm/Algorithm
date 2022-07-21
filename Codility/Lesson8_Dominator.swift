
import Foundation

public func solution_Dominator(_ A : inout [Int]) -> Int {
    var dic = [Int:Int]()

    for i in 0..<A.count {
        if !dic.keys.contains(A[i]) {
            dic[A[i]] = 1
        } else {
            dic[A[i]]! += 1
        }
        if dic[A[i]]! > A.count/2 {
            return i
        }
    }
    return -1
}

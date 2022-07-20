
import Foundation

public func solution_OddOccurrencesInArray(_ A : inout [Int]) -> Int {
    var check = [Int:Int]()
    for i in A {
        if !check.keys.contains(i) {
            check[i] = 1
        } else {
            check[i]! += 1
        }
    }
    for key in check.keys {
        if check[key]! % 2 != 0 {
            return key
        }
    }
    return 0
}

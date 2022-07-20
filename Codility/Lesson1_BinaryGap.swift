
import Foundation

public func solution_BinaryGap(_ N : Int) -> Int {
    let binary = String(N, radix: 2)
    var result = 0
    var count = 0
    for i in binary {
        if i == "0" {
            count += 1
        } else {
            result = max(result, count)
            count = 0
        }
    }
    return result
}

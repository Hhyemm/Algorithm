
import Foundation

func solution161989(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var end = 0
    var result = 0
    
    for s in section {
        if s >= end {
            end = m + s
            result += 1
        }
    }
    
    return result
}

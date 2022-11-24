
import Foundation

func solution138477(_ k:Int, _ score:[Int]) -> [Int] {
    var arr = [Int]()
    var result = [Int]()
    for s in score {
        arr.append(s)
        if arr.count > k {
            arr.sort()
            arr.removeFirst()
        }
        result.append(arr.min()!)
    }
    return result
}

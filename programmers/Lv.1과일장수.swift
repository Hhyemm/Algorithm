
import Foundation

func solution135808(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var score = score.sorted(by: >)
    var result = 0
    for i in 0..<score.count/m {
        result += (i*m..<i*m+m).map{score[$0]}.min()!*m
    }
    return result
}

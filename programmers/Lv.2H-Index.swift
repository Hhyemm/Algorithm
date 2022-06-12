
import Foundation

func solution(_ citations:[Int]) -> Int {
    for i in stride(from: citations.count-1, through: 0, by: -1) {
        if citations.filter({$0 >= i+1}).count >= i+1 {
            return i + 1
        }
    }
    return 0
}


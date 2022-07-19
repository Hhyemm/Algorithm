
import Foundation

func solution68646(_ a:[Int]) -> Int {
    var count = 0
    var left = Array(repeating: a.first!, count: a.count)
    var right = Array(repeating: a.last!, count: a.count)
    
    for i in 1..<a.count {
        left[i] = min(a[i], left[i-1])
    }
    
    for i in stride(from: a.count-2, through: 0, by: -1) {
        right[i] = min(a[i], right[i+1])
    }

    for i in 1..<a.count-1 {
        if left[i-1] < a[i] && right[i+1] < a[i] {
            count += 1
        }
    }
    
    return a.count-count
}

//print(solution([9, -1, -5]))

//print(solution([-16,27,65,-2,58,-92,-71,-68,-61,-33]))


import Foundation

func solution43238(_ n:Int, _ times:[Int]) -> Int64 {
    var start = 1
    var end = times.max()! * n
    var result = 0
    
    while start < end {
        let mid = (start+end)/2
        var value = 0
        
        for time in times {
            value += mid / time
        }

        if value >= n {
            end = mid
            result = mid
        } else {
            start = mid + 1
        }
    }
    return Int64(result)
}

//print(solution(6, [7,10]))
//print(solution(10, [6,8,10]))

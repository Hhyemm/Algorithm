
import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var day = 0
    var now = 0
    var result = [Int]()
    for i in 0..<progresses.count {
        var modDay = 100-progresses[i]
        while modDay > 0 {
            modDay -= speeds[i]
            day += 1
        }
        if now < day {
            now = day
            result.append(1)
        } else {
            result[result.count-1] += 1
        }
        day = 0
    }
    return result
}

/*
print(solution([93,30,55],[1,30,5]))
print(solution([95, 90, 99, 99, 80, 99],[1, 1, 1, 1, 1, 1]))
*/


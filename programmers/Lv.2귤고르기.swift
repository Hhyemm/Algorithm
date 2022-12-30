
import Foundation

func solution138476(_ k:Int, _ tangerine:[Int]) -> Int {
    var dic = [Int:Int]()
    for i in tangerine {
        if !dic.keys.contains(i) {
            dic[i] = 1
        } else {
            dic[i]! += 1
        }
    }
    let tan = dic.values.sorted(by: >)
    var right = 0
    var sum = tan[0]
 
    while sum < k {
        right += 1
        sum += tan[right]
    }
    return right + 1
}

//print(solution(2, [1, 1, 1, 1, 2, 2, 2, 3]))
//print(solution(4, [1, 3, 2, 5, 4, 5, 2, 3]))
//print(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]))

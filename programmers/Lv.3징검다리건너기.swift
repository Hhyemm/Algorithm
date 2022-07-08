
import Foundation

func solution64062_1(_ stones:[Int], _ k:Int) -> Int {
    var start = 0
    var end = stones.max()!
    var result = stones.max()!
    
    while start < end {
        let mid = (start+end)/2
        var count = 0
        
        for i in 0..<stones.count {
            if stones[i]-mid <= 0 {
                count += 1
                if count >= k {
                    break
                }
            } else {
                count = 0
            }
        }
        
        if count >= k {
            end = mid
            result = min(result, mid)
        } else {
            start = mid + 1
        }
    }
    return result
}

func solution64062_2(_ stones:[Int], _ k:Int) -> Int {
    var start = 0
    var end = stones.max()!
    var a = [Int]()
    
    while start <= end {
        let mid = (start+end)/2
        var length = 0
        var maxLenth = 0
        var pre = -1
        for i in 0..<stones.count {
            if stones[i]-mid <= 0 {
                if pre == -1 || pre == i-1 {
                    pre = i
                    length += 1
                } else {
                    pre = i
                    length = 1
                }
            }
            maxLenth = max(maxLenth, length)
        }
        
        if maxLenth >= k {
            a.append(mid)
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return a.min()!
}

//print(solution3([2, 4, 5, 3, 2, 1, 4, 2, 5, 1], 3))
//print(solution3([2, 4, 5, 3, 2, 1, 4, 2, 1, 1], 3))


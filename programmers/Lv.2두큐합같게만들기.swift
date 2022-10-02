
import Foundation

func solution118667(_ queue1:[Int], _ queue2:[Int]) -> Int {
    let queue = queue1+queue2
    let queueSum = (queue1+queue2).reduce(0, +)/2
    var sum = queue1.reduce(0, +)
    var start = 0
    var end = queue1.count
    var result = 0
    
    while end < queue.count {
        if sum == queueSum {
            return result
        } else if sum > queueSum {
            sum -= queue[start]
            start += 1

        } else {
            sum += queue[end]
            end += 1
        }
        result += 1
    }
    
    return -1
}

//print(solution([3,2,7,2], [4,6,5,1]))
//print(solution([1,2,1,2], [1,10,1,2]))
//print(solution([1,1], [1,5]))
//print(solution([1,1,1], [1,1,1])) // 테스트케이스 2번, 29번



func solution118667_2(_ queue1:[Int], _ queue2:[Int]) -> Int {
    let queueSum = (queue1+queue2).reduce(0, +)/2
    var reuslt = [Int]()
    if queue1.reduce(0, +) == queueSum {
        return 0
    }
    func slidingWindow(_ queue: [Int]) {
        var sum = 0
        var start = 0
        var end = 0
        while end < queue.count {
            if sum == queueSum {
                reuslt.append(end > queue1.count ? start+end%queue1.count : (end-start)+(start)*2+queue1.count)
                break
            } else if sum > queueSum {
                sum -= queue[start]
                start += 1
                
            } else {
                sum += queue[end]
                end += 1
                
            }
        }
    }
    slidingWindow(queue1+queue2)
    slidingWindow(queue2+queue1)
    return reuslt.isEmpty ? -1 : reuslt.min()!
}



// 시간초과

func solution118667_3(_ queue1:[Int], _ queue2:[Int]) -> Int {
 let sum = (queue1.reduce(0, +)+queue2.reduce(0, +))/2
 let mul = (queue1+queue2).count*2
 var count = 0
 func queue(_ queueA: [Int], _ queueB: [Int]) -> Int {
     var queueA = queueA
     var queueB = queueB
     while queueA.reduce(0, +) != sum {
         if queueA.reduce(0, +) > sum {
             queueB.append(queueA.removeFirst())
             count += 1
         } else if queueA.reduce(0, +) < sum {
             queueA.append(queueB.removeFirst())
             count += 1
         }
         if count > mul {
             return -1
         }
     }
     return count
 }
 return [queue(queue1, queue2), queue(queue2, queue1)].min()!
}
 


import Foundation

func solution68645(_ n:Int) -> [Int] {
    if n == 1 {
        return [n]
    }
    var arr = Array(repeating: Array(repeating: [Int](), count: 2), count: n)
    var count = 1
    var start = 0
    var end = n-1
    
    while start < end {
        for i in start...end {
            arr[i][0].append(count)
            count += 1
        }
        for _ in start..<end-1 {
            arr[end][0].append(count)
            count += 1
        }
        start += 1
        for i in stride(from: end, through: start, by: -1) {
            arr[i][1].append(count)
            count += 1
        }
        start += 1
        end -= 1
        if start == end {
            arr[start][0].append(count)
        }
    }
    var resultArr = [[Int]]()
    for i in 0..<arr.count {
        resultArr.append(arr[i][0]+arr[i][1].reversed())
    }
    var result = [Int]()
    for i in 0..<resultArr.count {
        result.append(contentsOf: resultArr[i])
    }
    return result
}

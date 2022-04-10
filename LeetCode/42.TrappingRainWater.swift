
import Foundation

func trap(_ height: [Int]) -> Int {
    var arr = [Int]()
    var result = 0
    for h in height {
        if arr.isEmpty {
            arr.append(h)
        } else if arr.last! >= h {
            arr.append(h)
        } else {
            for i in 1..<arr.count {
                if arr[i] < min(arr.first!,h) {
                    result += min(arr.first!,h) - arr[i]
                    arr[i] = min(arr.first!,h)
                }
            }
            if h >= arr.first! {
                arr = []
            }
            arr.append(h)
        }
    }
    return result
}

/*
 print(trap([0,7,1,4,6])) // 7
 print(trap([2,1,0,2])) // 3
 print(trap([0,1,0,2,1,0,1,3,2,1,2,1])) // 6
 print(trap([4,2,0,3,2,5])) // 9
 print(trap([5,4,1,2])) // 1
 */

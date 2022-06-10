
import Foundation

func solution2805() {
    let NM = readLine()!.split(separator: " ").map{Int($0)!}
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    var start = 0
    var end = arr.max()!
    var result = [Int]()

    while start <= end {
        var count = 0
        let mid = (start+end)/2
        
        for i in arr {
            count += (i - mid) < 0 ? 0 : (i - mid)
        }
        
        if count >= NM[1] {
            start = mid + 1
            result.append(mid)
        } else {
            end = mid - 1
        }
    }

    print(result.max()!)
}

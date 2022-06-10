
import Foundation

func solution1654() {
    let KN = readLine()!.split(separator: " ").map{Int($0)!}
    var arr = [Int]()
    for _ in 0..<KN[0] {
        arr.append(Int(readLine()!)!)
    }
    var result = [Int]()

    func find() {
        var start = 1
        var end = arr.max()!
        
        while start <= end {
            var count = 0
            let mid = (start+end)/2
            for i in arr {
                count += i / mid
            }

            if count >= KN[1] {
                start = mid + 1
                result.append(mid)
            } else {
                end = mid - 1
            }
        }
    }

    find()
    print(result.max()!)
}


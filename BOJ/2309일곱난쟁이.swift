
import Foundation

func solution2309() {
    var sum = 0
    var arr = [Int]()

    for _ in 0..<9 {
        let readLine = Int(readLine()!)!
        sum += readLine
        arr.append(readLine)
    }

    arr.sort()

    func find() -> [Int] {
        for i in 0..<arr.count {
            for j in i+1..<arr.count {
                if arr[i] + arr[j] == sum - 100 {
                    return [i, j]
                }
            }
        }
        return []
    }

    for i in 0..<arr.count {
        if !find().contains(i) {
            print(arr[i])
        }
    }
}


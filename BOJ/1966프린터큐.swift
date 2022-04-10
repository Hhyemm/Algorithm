
import Foundation

func solution1966() {
    let count = Int(readLine()!)!
    for _ in 0..<count {
        let NM = readLine()!.split(separator: " ").map{Int($0)!}
        let nums = readLine()!.split(separator: " ").map{Int($0)!}
        var priorty = nums.sorted(by: <)
        var arr = [Int]()
        var index = 0
        while true {
            if nums[index%NM[0]] == priorty.last! {
                arr.append(index%NM[0])
                priorty.removeLast()
                if arr.last! == NM[1] {
                    print(arr.count)
                    break
                }
            }
            index += 1
            if arr.contains(index%NM[0]) {
                index += 1
            }
        }
    }
}


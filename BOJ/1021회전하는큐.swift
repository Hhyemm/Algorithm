
import Foundation

func solution1021() {
    let NM = readLine()!.split(separator: " ").map{Int($0)!}
    let N = NM[0]
    let M = NM[1]
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    var arr = Array(1...N)
    var result = 0

    for num in nums {
        while true {
            if arr.first! == num {
                arr.removeFirst()
                break
            } else {
                if arr.firstIndex(of: num)! <= arr.count/2 {
                    arr.append(arr.removeFirst())
                    result += 1
                } else {
                    arr.insert(arr.removeLast(), at: 0)
                    result += 1
                }
            }
        }
    }

    print(result)
}

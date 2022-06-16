
import Foundation

func solution2331() {
    let AP = readLine()!.split(separator: " ").map{Int($0)!}
    let A = AP[0]
    let P = AP[1]
    var queue = [A]
    var arr = [Int]()

    arr.append(A)
    while !queue.isEmpty {
        var sum = 0
        for c in String(queue.first!) {
            sum += Int(pow(Double(String(c))!, Double(P)))
        }
        
        if arr.contains(sum) {
            if let index = arr.firstIndex(of: sum) {
                print(index)
            }
            break
        }
        arr.append(sum)
        queue.append(sum)
        queue.removeFirst()
    }
}


import Foundation

/*
 1. N과 K를 입력받는다.
 2. 1번부터 N번까지 N명의 사람 중 K번째 사람을 제거한다.
 3. N명의 사람이 모두 제거될 때까지 2를 반복한다.
 */

func josephus() {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let N = input[0]
    let K = input[1]
    var arr = Array(1...N)
    var result = [Int]()

    while !arr.isEmpty {
        for i in 0..<K {
            i != K-1 ? arr.append(arr.removeFirst()) : result.append(arr.removeFirst())
        }
    }

    print("<\(result.map{String($0)}.joined(separator: ", "))>")
}

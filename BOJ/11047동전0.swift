
import Foundation

func solution11047() {
    let NK = readLine()!.split(separator: " ").map{Int($0)!}
    let N = NK[0]
    var K = NK[1]
    var result = 0
    var coin = [Int]()

    for _ in 0..<N {
        let input = Int(readLine()!)!
        coin.append(input)
    }
    coin.sort(by: >)
    for i in coin {
        result += K / i
        K %= i
    }

    print(result)
}


import Foundation

func solution13305_100() {
    let _ = Int(readLine()!)!
    let distance = readLine()!.split(separator: " ").map{Int($0)!}
    let price = readLine()!.split(separator: " ").map{Int($0)!}
    var sum = 0
    var minValue = price.max()!

    for i in 0..<price.count-1 {
        minValue = min(minValue, price[i])
        sum += distance[i] * minValue
    }
    print(sum)
}

func solution13305_41() {
    let _ = Int(readLine()!)!
    let distance = readLine()!.split(separator: " ").map{Int($0)!}
    let price = readLine()!.split(separator: " ").map{Int($0)!}
    var sum = 0
    var minValue = price.max()!

    for i in 0..<price.count-1 {
        for j in i..<price.count-1 {
            if price[i] <= price[j] {
                minValue = min(minValue, price[j])
            } else {
                break
            }
        }
        sum += distance[i] * minValue
    }
    print(sum)
}


import Foundation

func solution14719() {
    let HW = readLine()!.split(separator: " ").map{Int($0)!}
    let rain = readLine()!.split(separator: " ").map{Int($0)!}
    var maxValue = 0
    var arr = [Int]()
    var result = 0

    for i in 0..<rain.count {
        if maxValue <= rain[i] {
            result += arr.map{min(maxValue, rain[i]) - $0}.reduce(0, +)
            maxValue = rain[i]
            arr = []
        } else {
            if !arr.isEmpty && rain[i] > arr.last! {
                for j in 0..<arr.count {
                    if rain[i] > arr[j] {
                        result += rain[i] - arr[j]
                        arr[j] = rain[i]
                    }
                }
            }
            arr.append(rain[i])
        }
    }

    print(result)
}

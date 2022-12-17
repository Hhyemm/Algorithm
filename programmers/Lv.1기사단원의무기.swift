
import Foundation

func solution136798(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result = 0
    for n in 1...number {
        var count = 0
        for i in 1...Int(sqrt(Double(n))) {
            if n % i == 0 {
                count += i * i == n ? 1 : 2
            }
        }
        result += count > limit ? power : count
    }
    return result
}

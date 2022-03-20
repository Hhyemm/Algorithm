
import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let K = String(n, radix: k).split(separator: "0")
    return K.filter{isPrime(Int($0)!)}.count
}

func isPrime(_ n: Int) -> Bool {
    if n == 1 { return false }
    if n == 2 || n == 3 { return true }
    let nn = Int(sqrt(Double(n)))
    for i in 2...nn {
        if n % i == 0 {
            return false
        }
    }
    return true
}


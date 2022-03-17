
import Foundation

func solution(_ n:Int) -> Int {
    let nBinary = String(n, radix: 2)
    var value = ""
    var N = n
    while true {
        N += 1
        let binary = String(N, radix: 2)
        if binary.filter({$0=="1"}).count == nBinary.filter({$0=="1"}).count {
            value = binary
            break
        }
    }
    return Int(value, radix: 2)!
}


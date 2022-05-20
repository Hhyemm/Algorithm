
import Foundation

func solution13458() {
    let N = Int(readLine()!)!
    let A = readLine()!.split(separator: " ").map{Int($0)!}
    let BC = readLine()!.split(separator: " ").map{Int($0)!}
    var count = 0

    for a in A {
        if a - BC[0] > 0 {
            count += 1
            if (a - BC[0]) % BC[1] > 0 {
                count += (a - BC[0]) / BC[1] + 1
            } else {
                count += (a - BC[0]) / BC[1]
            }
        } else {
            count += 1
        }
    }
    
    print(count)
}

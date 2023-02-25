
import Foundation

func solution2346() {
    let count = Int(readLine()!)!
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    var check = Array(repeating: false, count: count)
    var result = [Int]()
    var index = 0

    while result.count < count-1 {
        result.append(index+1)
        check[index] = true
        
        var n = 0
        let value = num[index]
        if value > 0 {
            while n < value {
                index += 1
                if index >= count {
                    index = 0
                }
                if !check[index] {
                    n += 1
                }
            }
        } else {
            while n < abs(value) {
                index -= 1
                if index < 0 {
                    index = count-1
                }
                if !check[index] {
                    n += 1
                }
            }
        }
    }

    result.append(index+1)
    print(result.map{String($0)}.joined(separator: " "))
}


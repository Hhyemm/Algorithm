
import Foundation

func solution70129(_ s:String) -> [Int] {
    var s = s
    var sum = 0
    var count = 0
    while s != "1" {
        let length = s.count
        let count1 = s.filter{$0 == "1"}.count
        sum += length - count1
        s = String(count1, radix: 2)
        count += 1
    }
    return [count, sum]
}

//print(solution("110010101001"))
//print(solution("01110"))
//print(solution("1111111"))



import Foundation

func solution77885(_ numbers:[Int64]) -> [Int64] {
    var result = [Int64]()
    for number in numbers {
        var binary = String(number, radix: 2)
        if !binary.contains("0") {
            binary.removeFirst()
            result.append(Int64("10"+binary, radix: 2)!)
        } else {
            var binaryArr = binary.map{String($0)}
            for i in stride(from: binaryArr.count-1, through: 0, by: -1) {
                if binaryArr[i] == "0" {
                    if i == binaryArr.count-1 {
                        binaryArr[i] = "1"
                    } else {
                        binaryArr[i] = "1"
                        binaryArr[i+1] = "0"
                    }
                    result.append(Int64(binaryArr.joined(), radix: 2)!)
                    break
                }
            }
        }
        
    }
    return result
}

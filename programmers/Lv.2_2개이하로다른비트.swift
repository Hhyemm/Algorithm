
import Foundation

func solution77885(_ numbers:[Int64]) -> [Int64] {
    var result = [Int64]()
    numbers.forEach {
        let binary = "0"+String($0, radix: 2)
        var binaryArr = binary.map{String($0)}
        for i in stride(from: binaryArr.count-1, through: 0, by: -1) {
            if binaryArr[i] == "0" {
                binaryArr[i] = "1"
                if i < binaryArr.count-1 {
                    binaryArr[i+1] = "0"
                }
                result.append(Int64(binaryArr.joined(), radix: 2)!)
                break
            }
            
        }
    }
    return result
}


import Foundation

func solution131701(_ elements:[Int]) -> Int {
    var result = [Int]()
    for i in 0..<elements.count {
        result.append(elements[i])
        for j in i+1..<i+elements.count {
            result.append(result.last!+(j >= elements.count ?  elements[j-elements.count] : elements[j]))
        }
    }
    return Set(result).count
}


import Foundation

func solution142086(_ s:String) -> [Int] {
    var str = ""
    var result = [Int]()
    for c in s {
        if !str.contains(String(c)) {
            result.append(-1)
        } else {
            result.append(str.count - str.lastIndex(of: c)!.utf16Offset(in: str))
        }
        str += String(c)
    }
    return result
}

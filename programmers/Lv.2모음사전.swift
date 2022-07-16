
import Foundation

func solution84512(_ word:String) -> Int {
    let arr = [781, 156, 31, 6, 1]
    let dic = ["A":0, "E":1, "I": 2, "O": 3, "U":4]
    var result = 0
    for (i,v) in word.enumerated() {
        result += dic[String(v)]! * arr[i] + 1
    }
    return result
}


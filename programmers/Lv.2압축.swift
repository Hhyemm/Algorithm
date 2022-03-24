
import Foundation

func solution(_ msg:String) -> [Int] {
    var cnt = 27
    var dic = [String:Int]()
    var str = ""
    var msg_ = msg
    var result = [Int]()
    while true {
        str += String(msg_.removeFirst())
        if msg_.isEmpty {
            str.count == 1 ? result.append(Int(Character(str).asciiValue!)-64) : result.append(dic[str]!)
            break
        }
        if !dic.keys.contains(str + String(msg_.first!)) {
            dic.updateValue(cnt, forKey: str+String(msg_.first!))
            cnt += 1
            str.count == 1 ? result.append(Int(Character(str).asciiValue!)-64) : result.append(dic[str]!)
            str = ""
        }
    }
    return result
}



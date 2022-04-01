
import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    let str1_ = multiplex(str1)
    let str2_ = multiplex(str2)
    var intersection = [Int]()
    var union = str2_
    for s1 in str1_ {
        for s2 in str2_ {
            if s1.key == s2.key {
                intersection.append(min(s1.value, s2.value))
            }
        }
        if !union.keys.contains(s1.key) {
            union.updateValue(s1.value, forKey: s1.key)
        } else {
            union[s1.key] = max(union[s1.key]!, s1.value)
        }
    }
    return union.count == 0 ? 65536 : intersection.count == 0 ? 0 : Int((Double(intersection.reduce(0, +))/Double(union.values.reduce(0, +)))*65536)
}

func multiplex(_ str: String) -> [String:Int] {
    var str_ = str.map{String($0).uppercased()}
    var dic = [String:Int]()
    for i in 1..<str_.count {
        if Character(str_[i-1]).isLetter && Character(str_[i]).isLetter {
            str_[i-1] += str_[i]
            if str_[i-1].count == 2 {
                if !dic.keys.contains(str_[i-1]) {
                    dic.updateValue(1, forKey: str_[i-1])
                } else {
                    dic[str_[i-1]]! += 1
                }
            }
        }
    }
    return dic
}

/*
print(solution("FRANCE", "french"))
print(solution("handshake", "shake hands"))
print(solution("aa1+aa2", "AAAA12"))
print(solution("E=M*C^2", "e=m*c^2"))
print(solution("A+C", "DEF"))
*/

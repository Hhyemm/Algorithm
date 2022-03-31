
import Foundation

func solution(_ s:String) -> [Int] {
    var dic = [Int:Int]()
    let arr = s.filter{$0.isNumber || $0 == ","}.components(separatedBy: ",")
    for i in arr {
        if !dic.keys.contains(Int(String(i))!) {
            dic.updateValue(1, forKey: Int(String(i))!)
        } else {
            dic[Int(String(i))!]! += 1
        }
    }
    return dic.sorted{$0.value > $1.value}.map{$0.key}
}

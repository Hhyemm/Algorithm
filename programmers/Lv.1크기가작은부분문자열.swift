
import Foundation

func solution147355(_ t:String, _ p:String) -> Int {
    var num = ""
    var result = 0
    for i in t {
        num += String(i)
        if num.count == p.count {
            print(num)
            if Int(num) ?? 0 <= Int(p)! {
                result += 1
            }
            num.removeFirst()
        }
    }
    return result
}

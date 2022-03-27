
import Foundation

func solution(_ number:String, _ k:Int) -> String {
    let num = Array(number)
    var s = 0
    var e = k + 1
    var result = ""
    for _ in 0..<number.count - k {
        var maxValue = 0
        for i in s..<e {
           if maxValue < Int(String(num[i]))! {
               maxValue = Int(String(num[i]))!
               s = i + 1
               if Int(String(num[i]))! == 9 { break }
           }
       }
       e += 1
       result += String(maxValue)
    }
    return result
}

/*
print(solution("1924",2))
print(solution("1231234",3))
print(solution("4177252841", 4))
*/


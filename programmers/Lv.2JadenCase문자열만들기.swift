
import Foundation

func solution(_ s:String) -> String {
    var space = true
    var result = ""
    for i in s {
        if i == " " {
            result += String(i)
            space = true
        } else {
            if space == true {
                result += i.uppercased()
                space = false
            }
            else {
                result += i.lowercased()
            }
        }
    }
    return result
}



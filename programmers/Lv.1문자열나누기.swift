
import Foundation

func solution140108(_ s:String) -> Int {
    var value = ("", 0, 0)
    var result = 0
    for c in s {
        if value.0 == "" {
            value.0 = String(c)
        }
        if String(c) == value.0 {
            value.1 += 1
        } else {
            value.2 += 1
        }
        if value.1 == value.2 {
            result += 1
            value = ("", 0 ,0)
        }
    }
    if value.0 != "" {
        result += 1
    }
    return result
}

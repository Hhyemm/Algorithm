
import Foundation

func solution(_ w:Int, _ h:Int) -> Int64 {
    return Int64((w*h)-(w+h-GCD(w, h)))
}

func GCD(_ min: Int, _ max: Int) -> Int {
    let remain = min % max
    return remain == 0 ? max : GCD(max, remain)
}


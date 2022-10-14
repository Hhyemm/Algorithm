
import Foundation

func solution120880(_ my_string:String) -> Int {
    let my_string = my_string.replacingOccurrences(of: " ", with: "")
    let values = my_string.components(separatedBy: ["+", "-"])
    let cal = my_string.filter{$0 == "+" || $0 == "-"}.map{$0}
    var result = Int(values[0])!
    for i in 0..<cal.count {
        if cal[i] == "+" {
            result += Int(values[i+1])!
        } else {
            result -= Int(values[i+1])!
        }
    }
    return result
}


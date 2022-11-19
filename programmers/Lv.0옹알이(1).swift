
import Foundation

func solution120956(_ babbling:[String]) -> Int {
    let arr = babbling.map{$0.replacingOccurrences(of: "aya", with: " ")}.map{$0.replacingOccurrences(of: "ye", with: " ")}.map{$0.replacingOccurrences(of: "woo", with: " ")}.map{$0.replacingOccurrences(of: "ma", with: " ").replacingOccurrences(of: " ", with: "")}
    return arr.filter{$0 == ""}.count
}

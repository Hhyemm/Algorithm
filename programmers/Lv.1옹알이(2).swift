
import Foundation

func solution133499(_ babbling:[String]) -> Int {
    var babbling = babbling
    var result = 0
    
    for i in 0..<babbling.count {
        for (j, str) in ["aya", "ye", "woo", "ma"].enumerated() {
            babbling[i] = babbling[i].replacingOccurrences(of: str, with: String(j))
        }
        if !babbling[i].contains("00") && !babbling[i].contains("11") && !babbling[i].contains("22") && !babbling[i].contains("33") && babbling[i].filter({$0.isLetter}).count == 0 {
            result += 1
        }
    }
    return result
}

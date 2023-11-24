
import Foundation

func solution155652(_ s:String, _ skip:String, _ index:Int) -> String {
    var alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var result = ""
    
    for s in skip {
        if let i = alphabet.firstIndex(of: String(s)) {
            alphabet.remove(at: i)
        }
    }
    
    for c in s {
        if let i = alphabet.firstIndex(of: String(c)) {
            var j = i
            while j + index >= alphabet.count {
                 j -= alphabet.count
            }
         
            result += alphabet[j + index]
        }
    }
    return result
}


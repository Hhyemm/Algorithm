
import Foundation

func solution1316() {
    let n = Int(readLine()!)!
    var result = 0

    for _ in 0..<n {
        let str = readLine()!
        var value = ""
        
        for c in str {
            if value.contains(c) && value.last! != c {
                break
            }
            
            value.append(c)
        }
        
        if str == value {
            result += 1
        }
    }

    print(result)
}

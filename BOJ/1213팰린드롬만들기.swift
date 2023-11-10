
import Foundation

func solution1213() {
    let str = readLine()!.sorted()
    var dic = [Character:Int]()
    var v = ""

    for c in str {
        dic[c, default: 0] += 1
    }

    var count = 0
    for (key, value) in dic {
        if value % 2 == 1 {
            count += 1
            v = String(key)
        }
        
        if count == 2 {
            break
        }
    }

    var result = ""
    if count > 1 {
        print("I'm Sorry Hansoo")
    } else {
        for (key, value) in dic.sorted(by: <) {
            for _ in 0..<value/2 {
                result += String(key)
            }
        }
        
        print(result + v + String(result.reversed()))
    }
}

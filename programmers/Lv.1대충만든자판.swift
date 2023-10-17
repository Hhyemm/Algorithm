
import Foundation

func solution160586(_ keymap:[String], _ targets:[String]) -> [Int] {
    var dic = [Character:Int]()
    var result = [Int]()
    for key in keymap {
        for (i, k) in key.enumerated() {
            dic[k] = min(i+1, dic[k] ?? i+1)
        }
    }
    for target in targets {
        var cnt = 0
        for t in target {
            if let v = dic[t] {
                cnt += v
            } else {
                cnt = -1
                break
            }
        }
        result.append(cnt)
    }
    return result
}

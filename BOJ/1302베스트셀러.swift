
import Foundation

func bestSeller() {
    let n = Int(readLine()!)!
    var dic = [String : Int]()

    for _ in 0..<n {
        let input = String(readLine()!)
        if !dic.keys.contains(input) {
            dic.updateValue(1, forKey: input)
        } else {
            dic[input]! += 1
        }
    }
    print(dic.filter{$0.value == dic.values.max()}.keys.sorted(by: <).first!)
}


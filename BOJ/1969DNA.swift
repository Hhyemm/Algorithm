
import Foundation

func solution1969() {
    let NM = readLine()!.split(separator: " ").map{Int($0)!}
    var DNA = [[String]]()
    var strResult = ""
    var intResult = 0
    for _ in 0..<NM[0] {
        let input = readLine()!.map{String($0)}
        DNA.append(input)
    }
    for i in 0..<NM[1] {
        var dic = [String:Int]()
        for dna in DNA {
            if !dic.keys.contains(dna[i]) {
                dic.updateValue(1, forKey: dna[i])
            } else {
                dic[dna[i]]! += 1
            }
        }
        strResult += dic.filter{$0.value == dic.values.max()!}.keys.sorted(by: <).first!
        var values = dic.map{$0.value}.sorted(by: >)
        values.removeFirst()
        intResult += values.reduce(0, +)
    }
    print(strResult)
    print(intResult)
}

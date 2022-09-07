
import Foundation

func solution2910() {
    let NC = readLine()!.split(separator: " ").map{Int($0)!}
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let N = NC[0]
    let C = NC[1]
    var dic = [Int:[Int]]()

    for i in 0..<input.count {
        if !dic.keys.contains(input[i]) {
            dic[input[i]] = [input[i]]
        } else {
            dic[input[i]]!.append(input[i])
        }
    }

    var result = dic.sorted { a, b in
        if a.value.count == b.value.count {
            return input.firstIndex(of: a.key)! < input.firstIndex(of: b.key)!
        }
        return a.value.count > b.value.count
    }.map{$0.value}.flatMap{$0}.map{String($0)}.joined(separator: " ")

    print(result)

}

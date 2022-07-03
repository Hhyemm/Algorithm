
import Foundation

func solution3568() {
    let input = readLine()!.split(separator: " ").map{String($0)}
    for i in 1..<input.count {
        var result = [String]()
        var v = ""
        for j in input[i] {
            if j.isLetter {
                v += String(j)
            } else if j == "]" {
                result.insert("[", at: 0)
            } else if j == "[" {
                result.insert("]", at: 0)
            } else if j != "," && j != ";" {
                result.insert(String(j), at: 0)
            }
        }
        print("\(input[0])\(result.joined()) \(v);")
    }
}


import Foundation


func solution_1(_ numbers:[Int]) -> String {
    let x = numbers.sorted{"\($0)\($1)" > "\($1)\($0)" }
    return x.reduce(0, +) == 0 ? "0" : x.map{String($0)}.joined()
}

func solution_2(_ numbers:[Int]) -> String {
    if numbers.filter({$0 == 0}).count == numbers.count {
        return "0"
    }
    let x = numbers.sorted{"\($0)\($1)" > "\($1)\($0)" }
    return x.map{String($0)}.joined()
}

// 시간초과
func solution_3(_ numbers:[Int]) -> String {
    var maxValue = ""
    var visited = Array(repeating: false, count: numbers.count+1)
    func permutation(_ index: Int, _ value: String) {
        if index == numbers.count {
            maxValue = max(maxValue, value)
            return
        }
        for i in 0..<numbers.count {
            if !visited[i] {
                visited[i] = true
                permutation(index+1, value+String(numbers[i]))
                visited[i] = false
            }
        }
    }
    permutation(0, "")
    return maxValue
}


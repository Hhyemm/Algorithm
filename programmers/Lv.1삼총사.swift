
import Foundation

func solution131705(_ number:[Int]) -> Int {
    var result = 0
    var visited = Array(repeating: false, count: number.count)
    func combination(_ index: Int, _ arr: [Int]) {
        if arr.count == 3 {
            if arr.reduce(0, +) == 0 {
                result += 1
            }
            return
        }
        for i in index..<number.count {
            if !visited[i] {
                visited[i] = true
                combination(i+1, arr+[number[i]])
                visited[i] = false
            }
        }
        
    }
    
    combination(0, [])
    return result
}

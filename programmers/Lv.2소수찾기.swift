
import Foundation

func solution(_ numbers:String) -> Int {
    var visited = Array(repeating: false, count: numbers.count)
    let nums = numbers.map{String($0)}
    var arr = Set<Int>()
    var str = ""
    
    func find(_ depth: Int) {
        if depth == nums.count {
            return
        }
        for i in 0..<nums.count {
            if !visited[i] {
                visited[i] = true
                str += nums[i]
                isPrime(Int(str)!)
                find(depth+1)
                visited[i] = false
                str.removeLast()
            }
        }
    }
    
    func isPrime(_ n: Int) -> Bool {
        if n <= 1 { return false }
        for i in 2..<n {
            if n % i == 0 {
                return false
            }
        }
        arr.insert(n)
        return true
    }
    
    find(0)
    return arr.count
}


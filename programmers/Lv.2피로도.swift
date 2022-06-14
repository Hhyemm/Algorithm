
import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var visited = Array(repeating: false, count: dungeons.count)
    var stack = [[Int]]()
    var result = 0
    
    func find(_ depth: Int) {
        if depth == dungeons.count {
            var sum = k
            var count = 0
            for i in 0..<stack.count {
                if stack[i][0] <= sum {
                    count += 1
                    sum -= stack[i][1]
                }
            }
            result = max(result, count)
            return
        }
        for i in 0..<dungeons.count {
            if !visited[i] {
                visited[i] = true
                stack.append(dungeons[i])
                find(depth+1)
                visited[i] = false
                stack.removeLast()
            }
        }
    }
    
    find(0)
    return result
}

//print(solution(80, [[80,20],[50,40],[30,10]]))


import Foundation

func solution6603() {
    while var line = readLine()?.split(separator: " ").map({Int($0)!}) {
        if line[0] == 0 {
            break
        }
        var visited = Array(repeating: false, count: line[0]+1)
        line.removeFirst()
        var stack = [Int]()
        
        func dfs(_ depth: Int, _ start: Int) {
            if depth == 6 {
                print(stack.map{String($0)}.joined(separator: " "))
                return
            }
            
            for i in start..<line.count {
                if !visited[i] {
                    visited[i] = true
                    stack.append(line[i])
                    dfs(depth+1, i)
                    visited[i] = false
                    stack.removeLast()
                }
            }
        }
        dfs(0, 0)
        print()
    }
}


import Foundation

func solution1759() {
    let LC = readLine()!.split(separator: " ").map{Int($0)!}
    let arr = readLine()!.split(separator: " ").map{String($0)}.sorted(by: <)
    var visited = Array(repeating: false, count: LC[1]+1)
    var stack = ""
    var vowel = 0

    func dfs(_ depth: Int, _ start: Int) {
        if depth == LC[0] {
            for s in stack {
                if s == "a" || s == "e" || s == "i" || s == "o" || s == "u" {
                    vowel += 1
                }
            }
            if vowel >= 1 && LC[0]-vowel >= 2 {
                print(stack)
            }
            vowel = 0
            return
        }
        for i in start..<LC[1] {
            if !visited[i] {
                visited[i] = true
                stack += arr[i]
                dfs(depth+1, i)
                visited[i] = false
                stack.removeLast()
            }
        }
    }

    dfs(0, 0)
}

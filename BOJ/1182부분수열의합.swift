
import Foundation

func solution1182() {
    let NS = readLine()!.split(separator: " ").map{Int($0)!}
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    var visited = Array(repeating: false, count: NS[0]+1)
    var sum = 0
    var count = 0

    func dfs(_ depth: Int, _ start: Int) {
        if depth == arr.count {
            return
        }
        
        for i in start..<arr.count {
            if !visited[i] {
                visited[i] = true
                sum += arr[i]
                if sum == NS[1] {
                    count += 1
                }
                dfs(depth+1, i)
                visited[i] = false
                sum -= arr[i]
            }
        }
    }

    dfs(0, 0)
    print(count)
}

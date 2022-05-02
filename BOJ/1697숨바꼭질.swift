
import Foundation

func solution1697() {
    let NK = readLine()!.split(separator: " ").map{Int($0)!}
    var visited = Array(repeating: false, count: 100001)
    var queue = [Int]()
    var arr = [NK[0]]
    var count = 0

    while true {
        for i in arr {
            if i + 1 <= 100001 && i >= 0 && !visited[i] {
                visited[i] = true
                queue.append(i)
            }
        }
        if arr.contains(NK[1]) {
            print(count)
            break
        }
        arr = []
        for i in queue {
            arr.append(i-1)
            arr.append(i+1)
            arr.append(i*2)
        }
        queue = []
        count += 1
    }
}



import Foundation

func solution10974() {
    let n = Int(readLine()!)!
    var visited = Array(repeating: false, count: n+1)

    func permutation(_ str: String) {
        if str.count == n {
            print(str.map{String($0)}.joined(separator: " "))
            return
        }
        for i in 1...n {
            if !visited[i] {
                visited[i] = true
                permutation(str+String(i))
                visited[i] = false
            }
        }
    }
    permutation("")
}

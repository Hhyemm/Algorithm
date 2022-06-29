
import Foundation

func solution16953() {
    let AB = readLine()!.split(separator: " ").map{Int($0)!}
    let A = AB[0]
    let B = AB[1]
    var result = [Int]()

    func dfs(_ a: Int, _ count: Int) {
        if a == B {
            result.append(count)
            return
        }
        
        if a > B {
            return
        }
        dfs(a * 2, count + 1)
        dfs(Int("\(a)1")!, count + 1)
    }

    dfs(A, 1)
    print(result.isEmpty ? -1 : result.min()!)
}

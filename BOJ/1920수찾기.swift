
import Foundation

func solution1920() {
    let N = Int(readLine()!)!
    let A = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
    let _ = Int(readLine()!)!
    let V = readLine()!.split(separator: " ").map{Int($0)!}

    func find(_ n: Int) -> Int {
        var start = 0
        var end = N-1
        
        while start <= end {
            let mid = (start + end)/2
            
            if A[mid] == n {
                return 1
            } else if A[mid] > n {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        return 0
    }

    for v in V {
        print(find(v))
    }
}

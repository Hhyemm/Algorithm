
import Foundation

func solution10815() {
    let N = Int(readLine()!)!
    var NArr = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
    let M = Int(readLine()!)!
    let MArr = readLine()!.split(separator: " ").map{Int($0)!}
    var result = ""

    func find(_ n:Int) -> String {
        var start = 0
        var end = NArr.count - 1
        
        while start <= end {
            let mid = (start + end) / 2
            
            if n == NArr[mid] {
                return "1"
            } else if n > NArr[mid] {
                start = mid + 1
            } else {
                end = mid - 1
            }
        }
        return "0"
    }

    for i in MArr {
        result += "\(find(i)) "
    }

    result.removeLast()
    print(result)
}

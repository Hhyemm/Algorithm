
import Foundation

func solution10816() {
    let N = Int(readLine()!)!
    let NArr = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
    let _ = Int(readLine()!)!
    let MArr = readLine()!.split(separator: " ").map{Int($0)!}
    var result = ""
    var dic = [Int:Int]()

    for n in NArr {
        if dic.keys.contains(n) {
            dic[n]! += 1
        } else {
            dic[n] = 1
        }
    }

    func find(_ m: Int) {
        var start = 0
        var end = N-1
        
        while start <= end {
            let mid = (start+end)/2
            if NArr[mid] == m {
                result += "\(dic[m]!) "
                return
            } else if NArr[mid] > m {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        result += "\(0) "
        return
    }

    for m in MArr {
        find(m)
    }

    result.removeLast()
    print(result)
}



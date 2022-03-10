
import Foundation

func solution(_ s:String) -> Int {
    var result = [String]()
    var strArr = [String]()
    var strArrResult = [String]()
    var str = ""
    if s.count == 1 {
        return 1
    }
    for i in 1...s.count/2  {
        for j in s {
            str.append(j)
            if str.count == i {
                strArr.append(str)
                str = ""
            }
        }
        str = ""
        strArr.append(String(s.suffix(s.count%i)))
        var cnt = 1
        strArr.append("")
        for k in 0..<strArr.count-1 {
            if strArr[k] != strArr[k+1] {
                cnt == 1 ? strArrResult.append(strArr[k]) : strArrResult.append("\(cnt)\(strArr[k])")
                cnt = 1
            } else {
                cnt += 1
            }
        }
        result.append(strArrResult.map{$0}.joined())
        strArr = []
        strArrResult = []
    }
    let resultCount = result.map{$0.count}
    return resultCount.min()!
}


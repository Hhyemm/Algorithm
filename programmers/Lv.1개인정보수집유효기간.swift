
import Foundation

func solution150370(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var result = [Int]()
    let today = today.split(separator: ".").map{Int($0)!}
    let todayCount = (today[0]-1)*12*28 + (today[1]-1)*28 + today[2]
    var termDic = [String: Int]()
    for term in terms {
        let termInfo = term.components(separatedBy: " ")
        termDic[termInfo[0]] = Int(termInfo[1])!
    }

    for (i, privacy) in privacies.enumerated() {
        let privacyInfo = privacy.components(separatedBy: " ")
        let date = privacyInfo[0].split(separator: ".").map{Int($0)!}
        let dateCount = (date[0]-1)*12*28 + (date[1]-1)*28 + date[2] + termDic[privacyInfo[1]]! * 28
        
        if todayCount >= dateCount {
            result.append(i+1)
        }
    }
    return result
}


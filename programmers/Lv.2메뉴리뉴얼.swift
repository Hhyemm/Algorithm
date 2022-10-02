
import Foundation

func solution72411(_ orders:[String], _ course:[Int]) -> [String] {
    var dic = [String:Int]()
    var result = [String]()
    func find(_ index: Int, _ str:String, _ nowCourse: Int, _ order: [String]) {
        if str.count == nowCourse {
            if dic.keys.contains(str) {
                dic[str]! += 1
            } else {
                dic[str] = 1
            }
            return
        }
        for i in index..<order.count {
            find(i+1, str+order[i], nowCourse, order)
        }
    }
    for order in orders {
        for i in course {
            find(0, "", i, order.map{String($0)}.sorted(by: <))
        }
    }
    for i in course {
        let dicFilterCount = dic.filter{$0.key.count == i && $0.value > 1}
        result.append(contentsOf: dicFilterCount.filter{$0.value == dicFilterCount.values.max()!}.map{$0.key})
    }
    return result.sorted(by: <)
}

print(solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2,3,4]))
print(solution(["ABCDE", "AB", "CD", "ADE", "XYZ", "XYZ", "ACD"], [2,3,5]))
print(solution(["XYZ", "XWY", "WXA"], [2,3,4]))

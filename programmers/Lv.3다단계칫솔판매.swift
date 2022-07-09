
import Foundation

func solution77486(_ enroll:[String], _ referral:[String], _ seller:[String], _ amount:[Int]) -> [Int] {
    var amountDic = [String:Int]()
    var parentDic = [String:String]()
    var result = [Int]()
    
    amountDic["-"] = 0
    for i in 0..<enroll.count {
        amountDic[enroll[i]] = 0
        parentDic[enroll[i]] = referral[i]
    }
    for i in 0..<seller.count {
        amountDic[seller[i]]! += amount[i]*100-amount[i]*10
        var parent = parentDic[seller[i]]!
        var value = amount[i]*10
        while parent != "-" {
            amountDic[parent]! += value-value/10
            parent = parentDic[parent]!
            value /= 10
            if value == 0 {
                break
            }
        }
    }
    for i in 0..<enroll.count {
        result.append(amountDic[enroll[i]]!)
    }
    return result
}

//print(solution(["john", "mary", "edward", "sam", "emily", "jaimie", "tod", "young"], ["-", "-", "mary", "edward", "mary", "mary", "jaimie", "edward"], ["young", "john", "tod", "emily", "mary"], [12, 4, 2, 5, 10]))
//print(solution(["john", "mary", "edward", "sam", "emily", "jaimie", "tod", "young"], ["-", "-", "mary", "edward", "mary", "mary", "jaimie", "edward"], ["sam", "emily", "jaimie", "edward"], [2, 3, 5, 4]))

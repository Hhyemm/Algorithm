
import Foundation

func solution131127(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var wantDic = [String: Int]()
    var discountDic = [String: Int]()
    var result = 0
    
    for i in 0..<want.count {
        wantDic[want[i]] = number[i]
    }
    
    for i in 0..<10 {
        discountDic[discount[i], default: 0] += 1
    }
    
    if discountDic == wantDic {
        result += 1
    }

    for i in 0..<discount.count-10 {
        if discountDic[discount[i]]! == 1 {
            discountDic[discount[i]] = nil
        } else {
            discountDic[discount[i]]! -= 1
        }
        discountDic[discount[i+10], default: 0] += 1
        if discountDic == wantDic {
            result += 1
        }
    }
    return result
}

//print(solution(["banana", "apple", "rice", "pork", "pot"], [3, 2, 2, 2, 1], ["chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"]))

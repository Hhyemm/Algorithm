
import Foundation

func solution67258_1(_ gems:[String]) -> [Int] {
    let setGems = Set(gems)
    var dicGems = [String:Int]()
    var start = 0
    var end = 0
    var result = (0, 0, gems.count)
    
    while end < gems.count && start <= end {
        if !dicGems.keys.contains(gems[start]) {
            dicGems[gems[start]] = 1
        }
        if dicGems.count == setGems.count {
            if result.2 > (end+1)-(start+1) {
                result = (start+1, end+1, (end+1)-(start+1))
            }
            dicGems[gems[start]]! -= 1
            if dicGems[gems[start]]! == 0 {
                dicGems[gems[start]] = nil
            }
            start += 1
        } else {
            end += 1
            if end == gems.count {
                break
            }
            if !dicGems.keys.contains(gems[end]) {
               dicGems[gems[end]] = 1
            } else {
                dicGems[gems[end]]! += 1
            }
        }
    }
    return [result.0, result.1]
}

//print(solution(["DIA", "RUBY", "RUBY", "DIA", "DIA", "EMERALD", "SAPPHIRE", "DIA"]))
//print(solution(["AA", "AB", "AC", "AA", "AC"]))
//print(solution(["XYZ", "XYZ", "XYZ"]))
//print(solution(["ZZZ", "YYY", "NNNN", "YYY", "BBB"]))
//print(solution(["A","A","A","B","B"])) // [3.4]
//print(solution(["A"])) // [1.1]
//print(solution(["A","B","B","B","B","B","B","C","B","A"] )) //[8,10]*/


// 시간초과
func solution67258_2(_ gems:[String]) -> [Int] {
    let setGems = Set(gems)
    var start = 0
    var end = 0
    var result = (0, 0, gems.count)
    
    while end < gems.count && start <= end {
        var setArr = Set<String>()
        for i in start...end {
            setArr.insert(gems[i])
        }
        if setArr.count == setGems.count {
            if result.2 > (end+1)-(start+1) {
                result = (start+1, end+1, (end+1)-(start+1))
            }
            start += 1
        } else if setArr.count < setGems.count {
            end += 1
        } else {
            start += 1
        }
    }
    return [result.0, result.1]
}


// 시간초과
func solution67258_3(_ gems:[String]) -> [Int] {
    let setGems = Set(gems)
    var result = [(Int,Int,Int)]()
    var start = 1
    var end = gems.count
    
    while start <= end {
        let mid = (start+end)/2
        var value = 0
        var arr = [String]()
        for i in 0..<gems.count {
            arr.append(gems[i])
            let setArrCount = Set(arr).count
            if arr.count == mid {
                if setArrCount == setGems.count {
                    value = max(value, setArrCount)
                    result.append((i-mid+2, i+1, (i+1)-(i-mid+2)))
                }
                arr.removeFirst()
            }
        }
        
        if value >= setGems.count {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    result.sort{$0.2<$1.2}
    return [result[0].0, result[0].1]
}


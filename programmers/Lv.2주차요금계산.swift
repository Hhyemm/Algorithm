
import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var firstDic = [String:Int]()
    var secondDic = [String:Int]()
    let time2359 = (23 * 60) + 59
    var resultDic = [String:Int]()
    for i in records {
        let record = i.components(separatedBy: " ")
        let time = record[0].split(separator: ":").map{Int($0)!}
        if record[2] == "IN" {
            firstDic[record[1]] = (time[0] * 60) + time[1]
        } else {
            if secondDic.keys.contains(record[1]) {
                secondDic[record[1]]! += ((time[0] * 60) + time[1]) - firstDic[record[1]]!
            } else {
                secondDic[record[1]] = ((time[0] * 60) + time[1]) - firstDic[record[1]]!
            }
            firstDic[record[1]] = nil
        }
    }
    for k in firstDic.keys {
        if secondDic.keys.contains(k) {
            secondDic[k]! += time2359 - firstDic[k]!
        } else {
            secondDic[k] = time2359 - firstDic[k]!
        }
    }
    for k in secondDic.keys {
        let value = fees[1] + Int(ceil((Double(secondDic[k]!)-Double(fees[0]))/Double(fees[2]))) * fees[3]
        resultDic[k] = value <= fees[1] ? fees[1] : value
    }
    return resultDic.sorted{$0.key < $1.key}.map{$0.value}
}

//print(solution([180, 5000, 10, 600], ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"]))

//print(solution([120, 0, 60, 591], ["16:00 3961 IN","16:00 0202 IN","18:00 3961 OUT","18:00 0202 OUT","23:58 3961 IN"]))

//print(solution([1, 461, 1, 10], ["00:00 1234 IN"]))

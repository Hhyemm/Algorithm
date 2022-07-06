
import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var dic = [String:[(Int,Int)]]()
    var dicSum = [String:Int]()
    var result = [Int]()
    for i in 0..<genres.count {
        if !dic.keys.contains(genres[i]) {
            dic[genres[i]] = [(i, plays[i])]
            dicSum[genres[i]] = plays[i]
        } else {
            dic[genres[i]]!.append((i, plays[i]))
            dic[genres[i]]!.sort{$0.1>$1.1}
            dicSum[genres[i]]! += plays[i]
        }
    }
    for i in dicSum.sorted(by: {$0.value > $1.value}) {
        result.append(dic[i.key]![0].0)
        if dic[i.key]!.count > 1 {
            result.append(dic[i.key]![1].0)
        }
    }
    return result
}

//print(solution1(["classic", "pop", "classic", "classic", "pop"], [500, 600, 150, 800, 2500])) // [4,1,3,0]
//print(solution1(["classic", "pop", "classic", "classic", "classic"], [500, 1000, 400, 300, 200, 100])) // [0,2,1]

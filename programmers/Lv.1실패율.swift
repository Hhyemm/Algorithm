
import Foundation

/*
 1. 실패율은 "스테이지에 도달했으나 아직 클리어하지 못한 플레이어의 수 / 스테이지에 도달한 플레이어 수"이다.
 2. 전체 스테이지의 개수 N, 게임을 이용하는 사용하자가 현재 멈춰있는 스테이지의 번호가 담긴 배열 stages
 3. 실패율이 높은 스테이지부터 내림차순으로 스테이지의 번호가 담겨있는 배열을 return한다. 실패율이 같으면 작은 번호의 스테이지가 먼저 오도록한다.
 */


/* 시간초과
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var dic = [Int:Double]()
    for i in 1...N {
        let x = Double(stages.filter{i==$0}.count)
        let y = Double(stages.filter{$0>=i}.count)
        dic[i] = x/y
    }
    let result = dic.sorted(by: <).sorted(by: {$0.value > $1.value})
    return result.map{$0.key}
}
 */

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var arr = Array(repeating: 0, count: N+1)
    var dic = [Int:Double]()
    for s in stages {
        for i in 0..<s {
            arr[i] += 1
        }
    }
    for i in 0..<N {
        dic.updateValue(Double(arr[i]-arr[i+1])/Double(arr[i]),forKey: i+1)
    }
    return dic.sorted(by: <).sorted{$0.value > $1.value}.map{$0.key}
}


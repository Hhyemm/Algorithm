
import Foundation

/*
 1. 1번 수포자는 [1,2,3,4,5,1,2,3,4,5,...], 2번 수포자는 [2,1,2,3,2,4,2,5,2,1,2,3,...], 3번 수포자는 [3,3,1,1,2,2,4,4,5,5,3,3,1,1,...] 방식으로 문제를 찍는다.
 2. 정답 answer이 주어졌을 때, 가장 많이 맞힌 사람을 출력한다. 높은 점수를 받은 사람이 여러명일 경우, 오름차순으로 정렬한다.
    - answers의 인덱스가 1,2,3번 수포자의 답의 인덱스와 동일한 경우 해당하는 수포자의 딕셔너리 key의 value 값을 +=1 한다.
    - 최대값을 가진 딕셔너리의 value를 추출한 후, 해당하는 value의 key를 정렬하여 출력한다.
 
 */

func solution(_ answers:[Int]) -> [Int] {
    let a = [1, 2, 3, 4, 5]
    let b = [2, 1, 2, 3, 2, 4, 2, 5]
    let c = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var dic = [1:0, 2:0, 3:0]
    
    for i in 0..<answers.count {
        if answers[i] == a[i%5] {
            dic[1]! += 1
        }
        if answers[i] == b[i%8] {
            dic[2]! += 1
        }
        if answers[i] == c[i%10] {
            dic[3]! += 1
        }
    }
    return dic.filter{$0.value == dic.values.max()!}.map{$0.key}.sorted(by: <)
}


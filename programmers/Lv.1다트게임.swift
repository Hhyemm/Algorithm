
import Foundation

/*
 1. 다트 게임은 총 3번의 기회가 있으며 0점에서 10점까지 얻을 수 있다.
 2. S, D, T 영역이 존재하며 각 영역 당첨 시 점수에서 1제곱, 2제곱, 3제곱으로 계산한다. S, D, T는 점수마다 하나씩 존재한다.
 3. *, # 영역이 존재하며 * 당첨 시 해당 점수와 바로 이전 점수를 각 2배로 만든다. # 당첨 시 해당 첨수는 마이너스 된다.
    *가 첫 번째 기회에 나올 경우 첫 번째 점수만 2배가 된다. *는 중첩될 수 있으며 중첩된 점수는 4배가 된다.
    *와 #가 중첩된 경우 점수는 -2배가 된다. *와 #는 존재할 수도, 존재하지 않을 수도 있다.
 - for문으로 dartResult 범위를 돌며 범위 값 i가 숫자에 해당할 경우 변수 n에 저장한다. 이는 Character인 i가 10점을 1과 0으로 분리해서 범위를 돌기 때문에 문자 또는 특수문자가 나오기 전까지는 n으로 모든 숫자를 저장한다. i가 문자 또는 특수문자 일 때 "S"인 경우 배열 result에 n을 저장한다. "D"인 경우에는 n을 제곱해서, "T"인 경우에는 n을 3제곱해서 result에 저장한다. "*"인 경우에는 result의 마지막값과 그전의 값을 x2로 만들고 "#"인 경우에는 마지막 값에 x(-1)을 한다. 마지막으로 else 문을 나가기 전 n을 초기화한다. 루프를 벗어나면 result의 모든 값을 reduce()로 더한 후 리턴한다.
 */

func solution(_ dartResult:String) -> Int {
    var n = ""
    var result = [Int]()
    
    for i in dartResult {
        if i.isNumber {
            n.append(String(i))
        } else {
            if i == "S" {
                result.append(Int(n)!)
            } else if i == "D" {
                result.append(Int(n)! * Int(n)! )
            } else if i == "T" {
                result.append(Int(n)! * Int(n)! * Int(n)!)
            } else if i == "*" {
                result[result.count-1] *= 2
                if result.count >= 2 {
                    result[result.count-2] *= 2
                }
            } else {
                result[result.count-1] *= (-1)
            }
            n = ""
        }
    }
    return result.reduce(0, +)
}



import Foundation

/*
 1. d는 부서별로 신청한 금액이 들어있는 배열을 의미하고 budget은 예산을 의미한다.
 2. 정해진 예산 안에서 각 부서의 신청한 금액을 지원한다. 신청한 금액만큼만을 지원할 수 있으며 보다 적은 금액은 지원할 수 없다.
 3. 지원할 수 있는 최대한 많은 부서의 수를 return한다.
 - for문으로 d를 내림차순으로 정렬한 배열의 범위를 돌며 d의 모든 원소를 더한 result에서 범위 값 i를 빼고 count에 1을 더한다.
 - result가 budget보다 값이 적은 경우 예산 안에서 지원이 가능해지며 d의 원소의 수에서 count를 뺀 값이 지원 가능한 부서의 수를 의미하기 때문에 이를 return한다.
 */

func solution(_ d:[Int], _ budget:Int) -> Int {
    var result = d.reduce(0, +)
    var count = 0
    for i in d.sorted(by: >) {
        if result <= budget {
            return d.count-count
        }
        count += 1
        result -= i
    }
    return d.count-count
}

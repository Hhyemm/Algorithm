
import Foundation

/*
 1. 구매한 로또가 낙서가 되어 일부 번호를 알아볼 수 없게 되었다. 당첨 번호와 비교 했을 때 가능했던 최고 순위와 최저 순위를 리턴한다.
 2. 로또 순위를 정하는 방식은 다음과 같다.
    1순위: 6개 번호 모두 일치, 2순위: 5개 번호 일치, 3순위: 4개 번호 일치, 4순위: 3개 번호 일치, 5순위: 2개 번호 일치, 6순위: 그 외
 3. lottos는 구매한 로또 번호를 의미하며 win_nums는 당첨번호를 의미한다. lottos에서 알아볼 수 없는 번호는 0으로 표기되어있다.
 - win_nums의 번호에 lottos의 번호가 포함되어 있으면 포함된 번호들을 sameNums에 저장한다.
 - lottos의 알 수 없는 번호인 0만 추출하여 저장한다.
 - 최대 일치 개수는 sameNums의 수+lottos0의 수이고 최소 일치 개수는 saumeNums의 수이다. 일치한 번호 수에 따라 순위를 리턴한다.
 */

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let sameNums = lottos.filter{win_nums.contains($0)}
    let lottos0 = lottos.filter{$0==0}
    return [sameNums.count+lottos0.count, sameNums.count].map{$0<=1 ? 6 : 7-$0}
}


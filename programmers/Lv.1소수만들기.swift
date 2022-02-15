
import Foundation

/*
 1. 숫자 배열 nums에서 서로 다른 숫자 3개를 골라 더했을 때 소수가 되는 경우의 개수를 출력한다.
 - 소수를 판별하는 함수를 생성한다. 2부터 n-1까지의 숫자 중 n을 나누었을 때, 나누어지면 소수가 아니므로 false를 return하고 나누어지지 않으면 true를 return 한다.
 - 3개의 for문을 사용하여 i,j,k가 nums의 범위를 돌며 3개의 수 i,j,k를 모두 더한 후 result 배열 저장한다.
 - 소수를 판별하는 isPrime()를 호출하여 result 배열에서 소수에 해당하는 수를 추출한 후 count 값을 출력한다.
 */
func makePrime() {
    func solution(_ nums:[Int]) -> Int {
        var result = [Int]()
        for i in 0..<nums.count-2 {
            for j in i+1..<nums.count-1 {
                for k in j+1..<nums.count {
                    result.append(nums[i]+nums[j]+nums[k])
                }
            }
        }
        return result.filter{isPrime($0)}.count
    }

    func isPrime(_ n: Int) -> Bool {
        for i in 2..<n {
            if n % i == 0 {
                return false
            }
        }
        return true
    }

}

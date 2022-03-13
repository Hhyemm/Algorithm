
import Foundation

var result = 0

func solution(_ numbers:[Int], _ target:Int) -> Int {
    dfs(numbers, target, 0, 0)
    return result
}

func dfs(_ numbers:[Int], _ target:Int, _ sum: Int, _ index: Int) {
    if index == numbers.count {
        if sum == target {
            result += 1
        }
        return
    }
    dfs(numbers, target, sum+numbers[index], index+1)
    dfs(numbers, target, sum-numbers[index], index+1)
}

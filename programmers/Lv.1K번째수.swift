
import Foundation

/*
 1. 배열 array와 [i,j,k]를 원소로 가진 2차원 배열 commands가 주어진다.
 2. array의 i번째 숫자부터 j번째 숫자까지 자르고 정렬핼했을 때, k번째에 있는 수를 출력한다.
 */

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    for command in commands {
        let arr = (command[0]...command[1]).map{array[$0-1]}.sorted(by: <)
        result.append(arr[command[2]-1])
    }
    return result
}



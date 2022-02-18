
import Foundation
/*
 1. 아홉 난쟁이 중 진짜 일곱 난쟁이를 찾아야 한다. 일곱 난쟁이의 모자에 100보다 작은 양의 정수를 적어놓았으며 모든 정수를 더한 값이 100이 된다.
 - 입력받은 정수값을 모두 더한 값에서 100을 뺀값이 일곱 난쟁이가 아니 다른 두 난쟁이의 합한 값이 된다.
 
 */
func solution3040() {
    var arr = [Int]()
    for _ in 0..<9 {
        let line = Int(readLine()!)!
        arr.append(line)
    }
    let sum = arr.reduce(0, +)-100
    for i in arr {
        if !arr.contains(sum-i) || i == sum-i {
            print(i)
        }
    }
}


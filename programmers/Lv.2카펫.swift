
import Foundation

func solution42842(_ brown:Int, _ yellow:Int) -> [Int] {
    for i in stride(from: yellow, through: 1, by: -1) {
        if yellow%i == 0 && i*2+yellow/i*2+4 == brown {
            return [i+2, yellow/i+2]
        }
    }
    return []
}

// print(solution(10, 2))
// print(solution(8, 1))
// print(solution(24, 24))


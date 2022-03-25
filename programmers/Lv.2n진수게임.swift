
import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var result = ""
    var count = 1
    for i in 0...t*m {
        for c in String(i, radix: n).uppercased() {
            if count % m == p % m {
                result += String(c)
            }
            count += 1
        }
    }
    return String(result.prefix(t))
}

/*
print(solution(2, 4, 5, 3))
print(solution(16, 16, 2, 1))
print(solution(16, 16, 2, 2))
*/

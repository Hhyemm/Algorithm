
import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result = [Int]()
    for i in Int(left+1)...Int(right+1) {
        result.append(max(((i-1)/n)+1, ((i-1)%n)+1))
    }
    return result
}

/*
print(solution(3, 2, 5))
print(solution(4, 7, 14))
*/

/* 시간초과
 func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
     var arr = Array(repeating: Array(repeating: 1, count: n), count: n)
     for i in 0..<n {
         for j in 0..<n {
             if i == 0 && j == 0 {
                 continue
             } else if i == 0 {
                 arr[i][j] = arr[i][j-1] + 1
             } else if j == 0 {
                 arr[i][j] = arr[i-1][j] + 1
             } else {
                 arr[i][j] = arr[i-1][j-1] + 1
             }
         }
     }
     let arrJoined = arr.reduce([], +)
     return (left...right).map{arrJoined[Int($0)]}
 }
 
 */


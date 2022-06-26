
import Foundation

func solution11728() {
    let NM = readLine()!.split(separator: " ").map{Int($0)!}
    let A = readLine()!.split(separator: " ").map{Int($0)!}
    let B = readLine()!.split(separator: " ").map{Int($0)!}

    func merge(_ left: [Int], _ right: [Int]) -> String {
        var leftIndex = 0
        var rightIndex = 0
        var result = ""
        
        while leftIndex < left.count && rightIndex < right.count {
           
            if left[leftIndex] <= right[rightIndex] {
                result += "\(left[leftIndex]) "
                leftIndex += 1
            } else {
                result += "\(right[rightIndex]) "
                rightIndex += 1
            }
        }
        
        while leftIndex < left.count {
            result += "\(left[leftIndex]) "
            leftIndex += 1
        }
        
        while rightIndex < right.count {
            result += "\(right[rightIndex]) "
            rightIndex += 1
        }
        
        result.removeLast()
        return result
    }

    print(merge(A, B))
}

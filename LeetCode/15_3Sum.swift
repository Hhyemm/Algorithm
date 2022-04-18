
import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    let nums_ = nums.sorted(by: <)
    var result = [[Int]]()
    if nums.count < 2 {
        return []
    }
    for i in 0..<nums_.count-2 {
        var start = i + 1
        var end = nums_.count - 1
        while start < end {
            if nums_[i] + nums_[start] + nums_[end] > 0 {
                end -= 1
            } else if nums_[i] + nums_[start] + nums_[end] < 0 {
                start += 1
            } else {
                if !result.contains([nums_[i], nums_[start], nums_[end]]) {
                    result.append([nums_[i], nums_[start], nums_[end]])
                }
                start += 1
                end -= 1
            }
        }
    }
    return result
}


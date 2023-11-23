
import Foundation

func solution161990(_ wallpaper:[String]) -> [Int] {
    var result = [50, 50, 0, 0]
    for (i, w) in wallpaper.enumerated() {
        for (j ,v) in w.enumerated() {
            if v == "#" {
                result[0] = min(result[0], i)
                result[1] = min(result[1], j)
                result[2] = max(result[2], i + 1)
                result[3] = max(result[3], j + 1)
            }
        }
    }
    return result
}

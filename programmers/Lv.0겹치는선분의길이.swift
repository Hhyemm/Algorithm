
import Foundation

func solution120876(_ lines:[[Int]]) -> Int {
    var arr = Array(repeating: 0, count: 201)
    for line in lines {
        for l in line[0]+1...line[1] {
            arr[l+100] += 1
        }
    }
    return arr.filter{$0 >= 2}.count
}

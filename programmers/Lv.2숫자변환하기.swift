
import Foundation

func solution154538(_ x:Int, _ y:Int, _ n:Int) -> Int {
    var arr = Array(repeating: 10000000, count: y + 1)
    arr[x] = 0
    
    for v in x...y {
        if v + n <= y {
            arr[v + n] = min(arr[v + n], arr[v] + 1)
        }
        if v * 2 <= y {
            arr[v * 2] = min(arr[v * 2], arr[v] + 1)
        }
        if v * 3 <= y {
            arr[v * 3] = min(arr[v * 3], arr[v] + 1)
        }
    }
    return arr[y] == 10000000 ? -1 : arr[y]
}

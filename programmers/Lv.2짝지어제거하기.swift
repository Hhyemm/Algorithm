
import Foundation

func solution(_ s:String) -> Int{
    var stack = [Character]()
    let sArr = Array(s)
    for i in 0..<sArr.count {
        if !stack.isEmpty && sArr[i] == stack.last! {
            stack.removeLast()
        }
        else {
            stack.append(sArr[i])
        }
    }
    return  stack.isEmpty ? 1 : 0
}



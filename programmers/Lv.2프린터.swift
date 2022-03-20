
import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var priorite = priorities.sorted(by: >)
    var index = 0
    while true {
        for i in 0..<priorities.count {
            if priorities[i] == priorite.first! {
                priorite.removeFirst()
                index += 1
                if i == location {
                    return index
                }
            }
        }
    }
}


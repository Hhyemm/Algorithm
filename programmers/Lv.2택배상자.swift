//
//  Lv.2택배상자.swift
//  programmers
//
//  Created by hyemi on 1/21/24.
//

import Foundation

func solution131704(_ order:[Int]) -> Int {
    var stack = [Int]()
    var n = 1
    var result = 0
    
    for i in 0..<order.count {
        while n <= order[i] {
            stack.append(n)
            n += 1
        }
        
        if stack.last! == order[i] {
            stack.removeLast()
            result += 1
        } else {
            break
        }

    }
    return result
}

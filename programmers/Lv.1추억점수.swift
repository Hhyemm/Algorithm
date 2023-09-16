//
//  Lv.1추억점수.swift
//  programmers
//
//  Created by hyemi on 2023/09/16.
//

import Foundation

func solution176963(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var dic = [String:Int]()
    var result = [Int]()

    for i in 0..<name.count {
        dic[name[i]] = yearning[i]
    }

    for p in photo {
        var sum = 0
        for n in p {
            sum += dic[n] ?? 0
        }
        result.append(sum)
    }

    return result
}

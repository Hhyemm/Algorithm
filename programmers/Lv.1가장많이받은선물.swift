//
//  Lv.1가장많이받은선물.swift
//  programmers
//
//  Created by hyemi on 1/17/24.
//

import Foundation

func solution258712(_ friends:[String], _ gifts:[String]) -> Int {
    var dic = [String: Int]()
    var giftsArr = Array(repeating: Array(repeating: 0, count: friends.count), count: friends.count)
    var giftsCount = Array(repeating: 0, count: friends.count)
    var result = Array(repeating: 0, count: friends.count)
    for (i, f) in friends.enumerated() {
        dic[f] = i
    }
    for gift in gifts {
        let g = gift.components(separatedBy: " ")
        let (a, b) = (g[0], g[1])
        giftsArr[dic[a]!][dic[b]!] += 1
        giftsCount[dic[a]!] += 1
        giftsCount[dic[b]!] -= 1
    }
    for i in 0..<friends.count {
        for j in 0..<friends.count where i != j {
            if giftsArr[i][j] > giftsArr[j][i] {
                result[i] += 1
            } else if giftsArr[i][j] == giftsArr[j][i] && giftsCount[i] > giftsCount[j] {
                result[i] += 1
            }
        }
    }
    
    return result.max()!
}

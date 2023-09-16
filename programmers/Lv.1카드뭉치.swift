//
//  Lv.1카드뭉치.swift
//  programmers
//
//  Created by hyemi on 2023/09/16.
//

import Foundation

func solution159994(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = cards1
    var cards2 = cards2
    for index in 0..<goal.count {
        if let card = cards1.first, card == goal[index] {
            cards1.removeFirst()
        } else if let card = cards2.first, card == goal[index] {
            cards2.removeFirst()
        } else {
            return "No"
        }
    }
    return "Yes"
}

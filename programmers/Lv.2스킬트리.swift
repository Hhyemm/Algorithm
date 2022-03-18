
import Foundation

/*
 1. 선행 스킬 순서 skill에 따라 스킬을 배울 수 있다. 유저들이 만든 스킬트리 배열 skill_trees에서 skill의 선행 순서에 맞게 주어진 스킬트리의 개수를 return한다.
 2. skill_trees에 skill에 해당하는 스킬이 아예 없어도 문제가 되지 않으니 카운트처리를 해야한다.
 */

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    let skillTrees = skill_trees.map{$0.filter{skill.contains($0)}}
    var count = 0
    for s in skillTrees {
        if s == "" {
            count += 1
        } else {
            let sArr = s.map{String($0)}
            var skillArr = skill.map{String($0)}
            while !skillArr.isEmpty {
                if sArr == skillArr {
                    count += 1
                    break
                } else {
                    skillArr.removeLast()
                }
            }
        }
    }
    return count
}

/*
 "CBD" ["CAD"] 0
 "CBD" ["AEF", "ZJW"] 2
 "REA" ["REA", "POA"] 1
 "CBDK" ["CB", "CXYB", "BD", "AECD", "ABC", "AEX", "CDB", "CBKD", "IJCB", "LMDK"] 4
 "BDC" ["AAAABACA"] 0
 "CBD" ["C", "D", "CB", "BDA"] 2
 */

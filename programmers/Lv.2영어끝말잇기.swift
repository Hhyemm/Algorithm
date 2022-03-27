
import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    for i in 0..<words.count {
        let num = (i % n) + 1
        let turn = (i / n) + 1
        if i != 0 {
            if words[i-1].suffix(1) != words[i].prefix(1) {
                return [num,turn]
            }
        }
        if (0..<i).map({words[$0]}).contains(words[i]) {
            return [num,turn]
        }
    }
    return [0,0]
}

/*
print(solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]))
print(solution(5, ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"]))
print(solution(2, ["hello", "one", "even", "never", "now", "world", "draw"]))
*/



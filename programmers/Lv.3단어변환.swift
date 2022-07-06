
import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    if !words.contains(target) {
        return 0
    }
    var visited = [String:Int]()
    visited[begin] = 0
    for word in words {
        visited[word] = 0
    }
    var queue = [String]()
    queue.append(begin)
    while !queue.isEmpty {
        let queueFirst = queue.first!.map{String($0)}
        for word in words {
            if visited[word] == 0 {
                let wordArr = word.map{String($0)}
                var count = 0
                for i in 0..<wordArr.count {
                    if queueFirst[i] != wordArr[i] {
                        count += 1
                    }
                }
                if count == 1 {
                    visited[word] = visited[queue[0]]! + 1
                    queue.append(word)
                }
            }
        }
        queue.removeFirst()
    }
    
    return visited[target]!
}

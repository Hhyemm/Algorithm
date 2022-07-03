
import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic = [String:[String]]()
    
    for clothe in clothes {
        if dic.keys.contains(clothe[1]) {
            dic[clothe[1]]!.append(clothe[0])
        } else {
            dic.updateValue([clothe[0]], forKey: clothe[1])
        }
    }
    return dic.values.map{$0.count+1}.reduce(1, *)-1
}

// 시간초과1
func solution1() {
    func solution(_ clothes:[[String]]) -> Int {
        var dic = [String:[String]]()
        
        for clothe in clothes {
            if dic.keys.contains(clothe[1]) {
                dic[clothe[1]]!.append(clothe[0])
            } else {
                dic.updateValue([clothe[0]], forKey: clothe[1])
            }
        }

        let arr = dic.map{$0.value}
        var count = 0
        var visited = Array(repeating: false, count: arr.count)
        func dfs(_ depht: Int, _ start: Int) {
            if depht == arr.count {
                return
            }
            for i in start..<arr.count {
                if !visited[i] {
                    for _ in 0..<arr[i].count {
                        visited[i] = true
                        count += 1
                        dfs(depht+1, i)
                        visited[i] = false
                    }
                }
            }
        }
        dfs(0, 0)
        return count
    }
}

// 시간초과2
func solution2(_ clothes:[[String]]) -> Int {
    var dic = [String:[String]]()
    
    for clothe in clothes {
        if dic.keys.contains(clothe[1]) {
            dic[clothe[1]]!.append(clothe[0])
        } else {
            dic.updateValue([clothe[0]], forKey: clothe[1])
        }
    }

    let arr = dic.map{$0.value}
    var count = 0
    
    func combi(_ index: Int) {
        if index == arr.count {
            return
        }
        for i in index..<arr.count {
            for _ in 0..<arr[i].count {
                count += 1
                combi(i+1)
            }
        }
    }
    combi(0)
    return count
}

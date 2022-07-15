
import Foundation

func solution64064(_ user_id:[String], _ banned_id:[String]) -> Int {
    var visited = Array(repeating: false, count: user_id.count)
    var result = [[String]]()
    
    func find(_ depth: Int, _ arr: [String]) {
        if depth == banned_id.count {
            var sum = 0
            for i in 0..<arr.count {
                let value = arr[i].map{String($0)}
                let ban = banned_id[i].map{String($0)}
                var count = 0
                if value.count != ban.count {
                    break
                }
                for j in 0..<value.count {
                    if ban[j] == "*" || value[j] == ban[j] {
                        count += 1
                    }
                }
                if count == value.count {
                    sum += 1
                }
            }
            if sum == banned_id.count && !result.contains(arr.sorted(by: <)) {
                result.append(arr.sorted(by: <))
            }
            return
        }
        for i in 0..<user_id.count {
            if !visited[i] {
                visited[i] = true
                find(depth+1, arr + [user_id[i]])
                visited[i] = false
            }
        }
    }
    find(0, [])
    return result.count
}

//print(solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "abc1**"]))
//print(solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["*rodo", "*rodo", "******"]))
//print(solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "*rodo", "******", "******"]))

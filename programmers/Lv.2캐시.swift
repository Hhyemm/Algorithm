
import Foundation

func solution17680(_ cacheSize:Int, _ cities:[String]) -> Int {
    var queue = [String]()
    var result = 0
    for i in 0..<cities.count {
        if cacheSize == 0 {
            return 5 * cities.count
        }
        if queue.contains(cities[i].lowercased()) {
            queue.remove(at: queue.firstIndex(of: cities[i].lowercased())!)
            result += 1
        } else {
            if queue.count >= cacheSize {
                queue.removeFirst()
            }
            result += 5
        }
        queue.append(cities[i].lowercased())
    }
    return result
}

/*
print(solution(3, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "Jeju", "Pangyo", "Seoul", "NewYork", "LA"]))
print(solution(3, ["Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul"]))
print(solution(2, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"]))
print(solution(5, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"]))
print(solution(2, ["Jeju", "Pangyo", "NewYork", "newyork"]))
print(solution(0, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA"]))
print(solution(3, ["A", "B", "A"])) //11
print(solution(0, ["A", "B", "A", "A", "A"])) //25
print(solution(10,["1", "2", "3", "2"])) // 16
*/

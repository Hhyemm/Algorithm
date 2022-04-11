
import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var arrive = [Int]()
    var road = [Int]()
    var wait = truck_weights
    var time = [Int]()
    var result = 0
    while !wait.isEmpty {
        if !time.isEmpty && time.first! == bridge_length {
            arrive.append(road.removeFirst())
            time.removeFirst()
        }
        if road.isEmpty || (road.reduce(0, +) + wait.first! <= weight)  {
            road.append(wait.removeFirst())
            time.append(0)
        }
        time = time.map{$0 + 1}
        result += 1
    }
    return result + bridge_length - time.last! + 1
}

/*
print(solution(4,2,[1,1,1,1])) // 10
print(solution(2, 10, [7,4,5,6])) // 8
print(solution(100, 100, [10])) // 101
print(solution(100, 100, [10,10,10,10,10,10,10,10,10,10])) // 110
*/


import Foundation

func solution10845() {
    let N = Int(readLine()!)!
    var queue = [String]()
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map{String($0)}
        switch input[0] {
        case "push" :
            queue.append(input[1])
        case "pop" :
            queue.isEmpty ? print(-1) : print(queue.removeFirst())
        case "size" :
            print(queue.count)
        case "empty" :
            queue.isEmpty ? print(1) : print(0)
        case "front" :
            queue.isEmpty ? print(-1) : print(queue.first!)
        default :
            queue.isEmpty ? print(-1) : print(queue.last!)
        }
    }
}


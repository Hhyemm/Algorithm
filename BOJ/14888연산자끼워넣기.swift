
import Foundation

func solution14888_1() {
    let N = Int(readLine()!)!
    let A = readLine()!.split(separator: " ").map{Int($0)!}
    var oper = readLine()!.split(separator: " ").map{Int($0)!}
    var values = [Int]()

    func dfs(_ index: Int, _ next: Int) {
        if index >= N {
            values.append(next)
            return
        }
        for i in 0..<4 {
            if oper[i] > 0 {
                oper[i] -= 1
                switch i {
                case 0 :
                    dfs(index+1, next+A[index])
                case 1 :
                    dfs(index+1, next-A[index])
                case 2 :
                    dfs(index+1, next*A[index])
                default :
                    dfs(index+1, next/A[index])
                }
                oper[i] += 1
            }
        }
    }

    dfs(1, A[0])
    print(values.max()!)
    print(values.min()!)
}

func solution14888_2() {
    let N = Int(readLine()!)!
    let A = readLine()!.split(separator: " ").map{Int($0)!}
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    var oper = [Int]()
    var visited = Array(repeating: false, count: N+1)
    var stack = [Int]()
    var values = [Int]()

    for i in 0..<arr.count {
        for _ in 0..<arr[i] {
            oper.append(i)
        }
    }

    func dfs(_ depth: Int, _ start: Int) {
        if depth == oper.count {
            var value = A[0]
            for i in 0..<oper.count {
                switch stack[i] {
                case 0 :
                    value += A[i+1]
                case 1 :
                    value -= A[i+1]
                case 2 :
                    value *= A[i+1]
                default :
                    value /= A[i+1]
                }
            }
            values.append(value)
            return
        }
        for i in 0..<oper.count {
            if !visited[i] {
                visited[i] = true
                stack.append(oper[i])
                dfs(depth+1, i)
                visited[i] = false
                stack.removeLast()
            }
        }
    }

    dfs(0, 0)

    print(values.max()!)
    print(values.min()!)
}

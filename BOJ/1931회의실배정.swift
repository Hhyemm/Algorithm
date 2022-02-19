
import Foundation

/*
 1. 한 개의 회의실에 대하여 N개의 회의에 시작시간과 끝나는 시간이 주어지고 회의시간이 겹치지 않게 하면서 회의실을 사용할 수 있는 회의의 최대 개수를 출력한다.
 - 시작하는 시간을 기준으로 정렬한 후 끝나는 시간을 기준으로 정렬한다. 끝나는 시간보다 다음 시작시간이 크면 count+=1을 한다.
 */

func solution1931() {
    let n = Int(readLine()!)!
    var arr = [(Int,Int)]()

    for _ in 0..<n {
        let time = readLine()!.split(separator: " ").map{Int($0)!}
        let (s, e) = (time[0], time[1])
        arr.append((s,e))
    }
    arr = arr.sorted{$0.0 < $1.0}.sorted{$0.1 < $1.1}

    var now = 0
    var count = 0
    for (s,e) in arr {
        if s >= now {
            now = e
            count += 1
        }
    }
    print(count)
}

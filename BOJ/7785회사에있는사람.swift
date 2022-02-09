
import Foundation

/*
 1. 로그에 기록된 출입 기록의 수 n을 입력한다.
 2. n개의 줄에 출입 기록을 입력한다. 각 사람의 이름과 "enter"나 "leave"를 입력한다.
 3. 값이 "enter"인 경우 set에 사람의 이름을 저장한다. "leve"인 경우 해당 사람의 이름을 삭제한다.
 4. 결과적으로, 현재 남아있는 사람의 이름을 내림차순으로 정렬하여 출력한다.
 */

func enterOrLeave() {
    let n = Int(readLine()!)!
    var s = Set<String>()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{String($0)}
        if input[1] == "enter" {
            s.insert(input[0])
        } else {
            s.remove(input[0])
        }
    }
    print(s.sorted(by: >).joined(separator: "\n"))
}



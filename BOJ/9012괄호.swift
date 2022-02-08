
import Foundation

func parenthesis() {
    /*
     1. "(" 와 ")"만으로 구성된 문자열을 입력받는다.
     2. "()"이 한 쌍이되도록 해야한다. 즉, "(())"은 해당하지만 "())"와 "(()"은 해당하지 않는다.
     3. "("를 입력받으면 count += 1 해주고 ")"를 입력받으면 count -= 1 해준다.
     4. 만약 count 값이 0인 경우, ")"를 입력받으면 2에 위배되므로 "NO"를 입력한다.
     5. 결과적으로, count가 0이면 "YES"를 출력하고 그렇지 않으면 "NO"를 출력한다.
     */

    let n = Int(readLine()!)!

    for _ in 0..<n {
        let str = String(readLine()!)
        var cnt = 0
        func solution() -> String {
            for s in str {
                if s == "(" {
                    cnt += 1
                } else if s == ")" {
                    if cnt == 0 {
                        return "NO"
                    }
                    else {
                        cnt -= 1
                    }
                }
            }
            return cnt == 0 ? "YES" : "NO"
        }
        print(solution())
    }
}



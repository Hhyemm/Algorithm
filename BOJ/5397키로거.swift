
import Foundation

/*
 1. 테스트 케이스의 개수를 입력한다.
 2. 비밀번호에 해당하는 문자열을 입력한다. 입력한 문자열은 알파벳 대문자, 소문자, 숫자, 백스페이스, 화살표로 이루어져있다.
 3. 백스페이스는 "-"에 해당하며, 커서 앞에 글자가 존재한다면, 그 글자를 지운다. 화살표의 입력은 "<"와 ">"로 주어지며, 커서의 위치를 움직일 수 있으면, 왼쪽 또는 오른쪽으로 1만큼 움직인다.
    - "<"일 때, str1에 데이터가 있으면 pop해서 str2에 append
    - ">"일 때, str2에 데이터가 있으면 pop해서 str1에 append
    - "-"일 때, str1에 pop
    - 그 외 문자이면 str1에 append
 4. 나머지 문자가 비밀번호에 해당한다. str2를 reverse()로 뒤집어 str1과 합친 후 출력한다.
 */

func keylogger() {
    let n = Int(readLine()!)!

    for _ in 0..<n {
        let input = String(readLine()!)
        var str1 = ""
        var str2 = ""
        for s in input {
            if s == "<" {
                if str1.isEmpty {
                    continue
                } else {
                    str2.append(str1.removeLast())
                }
            } else if s == ">" {
                if str2.isEmpty {
                    continue
                } else {
                    str1.append(str2.removeLast())
                }
            } else if s == "-" {
                if str1.isEmpty {
                    continue
                } else {
                    str1.removeLast()
                }
            } else {
                str1.append(s)
            }
        }
        let str = str2.map{String($0)}.reversed().joined()
        str1.append(str)
        print(str1)
    }
}


import Foundation

/*
 1. 첫째 줄에는 피연산자의 개수, 둘째 줄에는 후위 표기식, 셋째 줄부터 N+2번째 줄까지는 각 피연산자에 대응하는 값이 주어진다. (피연산자는 A~Z의 영대문자이다.)
 2. 계산 결과는 소숫점 둘째 자리까지 출력한다.
 - 딕셔너리에 입력받은 피연산자를 key로 피연산자에 대응하는 값을 value로 저장한다.
 - 후위 표기식의 범위를 돌며 문자일 경우 딕셔너리에서 해당 문자 key에 해당하는 value를 numArr에 저장한다.
 - 범위값이 연산자일 경우 numArr의 마지막값을 value1에 저장 후 삭제, value2에 다음 마지막값을 저장한 후 삭제한다.
 - value1과 value2를 범위값에 해당하는 연산을한 후 최종 값 numArr의 첫번째 값을 출력한다.
 */

func solution1935() {
    let n = Int(readLine()!)!
    let str = readLine()!.map{String($0)}
    var dic = [String:Int]()
    var numArr = [Double]()
    var index = 65
    for _ in 0..<n {
        let num = Int(readLine()!)!
        dic.updateValue(num, forKey: String(UnicodeScalar(index)!))
        index += 1
    }
    for s in 0..<str.count {
        if Character(str[s]).isLetter {
            numArr.append(Double(dic[str[s]]!))
        } else {
            let value1 = numArr.removeLast()
            let value2 = numArr.removeLast()
            if str[s] == "*" {
                numArr.append(value2 * value1)
            } else if str[s] == "+" {
                numArr.append(value2 + value1)
            } else if str[s] == "/" {
                numArr.append(value2 / value1)
            } else if str[s] == "-" {
                numArr.append(value2 - value1)
            }
        }
    }
    print(String(format: "%.2f", numArr.first!))
}


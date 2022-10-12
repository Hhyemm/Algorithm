
import Foundation

func solution131128(_ X:String, _ Y:String) -> String {
    var XArr = Array(repeating: 0, count: 10)
    var YArr = Array(repeating: 0, count: 10)
    var result = ""
    for x in X {
        XArr[Int(String(x))!] += 1
    }
    for y in Y {
        YArr[Int(String(y))!] += 1
    }
    for i in stride(from: XArr.count-1, through: 0, by: -1) {
        if XArr[i] == 0 || YArr[i] == 0 {
            continue
        }
        result += XArr[i] >= YArr[i] ? String(repeating: String(i), count: YArr[i]) : String(repeating: String(i), count: XArr[i])
    }
    return result == "" ? "-1" : result.first! == "0" ? "0" : result
}

//print(solution("100", "2345"))
//print(solution("100", "203045"))
//print(solution("100", "123450"))
//print(solution("12321", "42531"))
//print(solution("5525", "1255"))

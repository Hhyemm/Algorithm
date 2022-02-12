
import Foundation

/*
 1. 문자열 s는 숫자 또는 숫자의 영단어로 주어진다.
 2. s에서 영단어는 숫자로 변환하여 리턴한다.
 - 딕셔너리에 영단어와 영단어가 의미하는 숫자를 key와 value로 저장한다.
 - for문으로 s의 범위를 돌면서 숫자이거나 딕셔너리에 해당하는 key가 존재하면 value를 result 변수에 저장한 후 result를 반환한다.
 */

func solution(_ s:String) -> Int {
    let dic = ["zero":0, "one":1, "two":2, "three":3, "four":4, "five":5, "six": 6, "seven":7, "eight":8, "nine":9]
    var result = [Int]()
    var x = ""
    for str in s {
        x.append(str)
        if str.isNumber {
            result.append(Int(String(str))!)
            x = ""
        }
        else if dic.keys.contains(x) {
            result.append(dic[x]!)
            x = ""
        }
    }
    return Int(result.map{String($0)}.joined())!
}

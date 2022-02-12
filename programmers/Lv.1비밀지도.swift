
import Foundation

/*
 1. 지도는 한 변의 길이가 n인 정사각형 배열 형태이다. 각 칸은 " " 또는 "#(벽)"으로 이루어진다.
 2. 전체 지도는 두 장의 지도를 겹쳐서 얻을 수 있다. 지도1과 지도2 중 어느 하나라도 벽인 부분은 전체 지도에서도 벽이다.
 3. 지도1과 지도2는 각각 정수 배열로 암호화 되어있다.
 4. 암호화된 배열은 지도의 벽 부분을 1, 공백 부분은 0으로 부호화했을 때 얻어지는 이진수에 해당하는 값의 배열이다.
 - arr1과 arr2를 이진수로 변경한 후, 두 배열을 더해 하나의 배열(arr)로 만든다.
 - arr에서 0은 " "으로 변경하고 0에 해당하지 않는 값(벽에 해당하는 값 1과 2)은 "#"으로 변경한다.
 - arr에서 이진수로 변경한 값의 길이가 n보다 작을 수 있다. 그렇게 되면 " "가 표시되지 않고 생략되어 리턴되기 때문에 값의 맨앞에 " "를 추가하는 strCount()를 생성한다.
 - arr의 각 열의 길이가 n보다 작을 경우, strCount()를 호출하여 배열에 저장하고 그렇지 않을 경우 해당열을 그대로 배열에 저장한 후 리턴한다.
 */

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    let binaryArr1 = arr1.map{String($0, radix: 2)}
    let binaryArr2 = arr2.map{String($0, radix: 2)}
    let arr = (0..<n).map{String(Int(binaryArr1[$0])!+Int(binaryArr2[$0])!)}
    return arr.map{$0.map{String($0) == "0" ? " " : "#"}.joined()}.map{$0.count < n ? strCount(n,$0) : $0}
}

func strCount(_ n:Int, _ str:String) -> String {
    var str_ = str
    let insertStr = str_.index(str_.startIndex, offsetBy: 0)
    while str_.count < n {
        str_.insert(" ", at: insertStr)
    }
    return str_
}



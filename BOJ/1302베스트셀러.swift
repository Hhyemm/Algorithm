
import Foundation

/*
 1. 오늘 팔린 책의 개수 N을 입력한다.
 2. N개의 책 제목을 입력한다.
 3. 딕셔너리에 책 제목과 개수를 저장한다. 딕셔너리에 해당 책의 key가 저장되어 있지 않을 경우, value 값 1로 저장을 하고 해당 책의 key가 저장되어 있는 경우, value에 += 1 한다.
 4. 가장 많이 팔린 책 즉, value가 가장 큰 값을 출력한다. 가장 큰 값이 여러 개일 경우 사전 순으로 가장 앞서는 책 제목을 출력한다.
 
 */

func bestSeller() {
    let n = Int(readLine()!)!
    var dic = [String : Int]()

    for _ in 0..<n {
        let input = String(readLine()!)
        if !dic.keys.contains(input) {
            dic.updateValue(1, forKey: input)
        } else {
            dic[input]! += 1
        }
    }
    print(dic.filter{$0.value == dic.values.max()}.keys.sorted(by: <).first!)
}


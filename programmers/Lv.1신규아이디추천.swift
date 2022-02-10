
import Foundation

/*
 신규 유저가 입력한 아이디를 나타내는 new_id가 매개변수로 주어질 때, 7단계 규칙에 따라 처리 후 추천 아이디를 return한다.
 1단계 new_id의 모든 대문자를 대응되는 소문자로 치환한다.
 2단계 new_id에서 알파벳 소문자, 숫자, 빼기(-), 밑줄(_), 마침표(.)를 제외한 모든 문자를 제거한다.
 3단계 new_id에서 마침표(.)가 2번 이상 연속된 부분을 하나의 마침표(.)로 치환한다.
 4단계 new_id에서 마침표(.)가 처음이나 끝에 위치한다면 제거한다.
 5단계 new_id에서 빈 문자열이라면, new_id에 "a"를 대입한다.
 6단계 new_id의 길이가 16자 이상이면, new_id의 첫 15개의 문자를 제외한 나머지 문자들을 모두 제거한다.
      만약 제거 후 마침표(.)가 new_id의 끝에 위치한다면 끝에 위치한 마침표(.) 문제를 제거한다.
 7단계 new_id의 길이가 2자 이하라면, new_id의 마지막 문자를 new_id의 길이가 3이 될 때까지 반복한다.
    
 */

func solution(_ new_id:String) -> String {
    // 1단계
    let newId = new_id.lowercased()
    var myId = ""
    // 2단계
    for i in newId {
        if i.isLetter || i.isNumber || i == "-" || i == "_" || i == "." {
            myId += String(i)
        }
    }
    // 3단계
    while myId.contains("..") {
        myId = myId.replacingOccurrences(of: "..", with: ".")
    }
    while myId.first == "." {
        myId.removeFirst()
    }
    // 4단계
    while myId.last == "." {
        myId.removeLast()
    }
    // 5단계
    if myId.isEmpty {
        myId += "a"
    }
    // 6단계
    while myId.count >= 16 {
        myId.removeLast()
        while myId.last == "." {
            myId.removeLast()
        }
    }
    // 7단계
    if myId.count <= 2 {
        while myId.count != 3 {
            myId += String(myId.last!)
        }
    }
    return myId
}


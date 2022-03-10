
import Foundation

/*
 문제. 채팅방을 들어오거나 나가면 메시지가 화면에 표시된다. 닉네임은 채팅방에서 변경하거나 채팅방을 나간 후 다시 들어오면서 변경할 수 있다.
      닉네임을 변경하면 기존에 출력된 메시지의 닉네임도 전부 변경된다. 최종적으로 방을 개설한 사람이 보게 되는 메시지를 return한다.
 - 딕셔너리 id에 [유저 아이디: 닉네임] 형태로 저장한다.
 - 유저가 들어오거나 나갔을 때 유저 아이디에 해당하는 닉네임과 메시지를 result 변수에 저장하여 return한다.
 
 */

func solution(_ record:[String]) -> [String] {
    let recordArr = record.map{$0.split(separator: " ").map{String($0)}}
    var id = [String:String]()
    var result = [String]()
    for i in 0..<recordArr.count {
        if recordArr[i][0] == "Leave" {
            continue
        }
        id.updateValue(recordArr[i][2], forKey: recordArr[i][1])
    }
    for i in 0..<recordArr.count {
        if recordArr[i][0] == "Enter" {
            result.append(id[recordArr[i][1]]!+"님이 들어왔습니다.")
        }
        if recordArr[i][0] == "Leave" {
            result.append(id[recordArr[i][1]]!+"님이 나갔습니다.")
        }
    }
    return result
}


/*
 ["Enter uid1234 Muzi",
 "Enter uid4567 Prodo",
 "Leave uid1234",
 "Enter uid1234 Prodo",
 "Change uid4567 Ryan"]
 
 */



import Foundation

func solution118666(_ survey:[String], _ choices:[Int]) -> String {
    var dic: [Character:Int] = ["R":0, "T":0, "C":0, "F":0, "J":0, "M":0, "A":0, "N":0]
    let arr: [Character] = ["R","T","C","F","J","M","A","N"]
    var result = ""
    for i in 0..<choices.count {
        if choices[i] < 4 {
            dic[survey[i].first!]! += (4-choices[i])
        } else if choices[i] > 4 {
            dic[survey[i].last!]! += (choices[i]-4)
        }
    }
    for i in 0..<arr.count {
        if i % 2 == 0 {
            if dic[arr[i]]! > dic[arr[i+1]]! {
                result += String(arr[i])
            } else if dic[arr[i]]! < dic[arr[i+1]]! {
                result += String(arr[i+1])
            } else {
                result += String([arr[i], arr[i+1]].sorted(by: <).first!)
            }
        }
    }
    return result
}

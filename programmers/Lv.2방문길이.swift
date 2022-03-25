
import Foundation

func solution(_ dirs:String) -> Int {
    var x = 0
    var y = 0
    var result = [String]()
    var str = ""
    for d in dirs {
        str += "\(x)\(y) "
        switch d {
        case "U" :
            if y == 5 { break }
            y += 1
        case "D" :
            if y == -5 { break }
            y -= 1
        case "R" :
            if x == 5 { break }
            x += 1
        default :
            if x == -5 { break }
            x -= 1
        }
        str += "\(x)\(y)"
        let strArr = str.split(separator: " ").map{String($0)}
        if !result.contains(str) && !result.contains("\(strArr[1]) \(strArr[0])") && str != "\(strArr[1]) \(strArr[0])" {
            result.append(str)
        }
        str = ""
    }
    return result.count
}

/*
print(solution("ULURRDLLU"))
print(solution("LULLLLLLU"))
*/

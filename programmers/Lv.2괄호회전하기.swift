
import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    var str = s
    for _ in 0..<s.count {
        if parenthesis(str) {
            result += 1
        }
        str.append(str.removeFirst())
    }
    return result
}

func parenthesis(_ s:String) -> Bool {
    var stack = [Character]()
    for i in s {
        if i == "(" || i == "{" || i == "[" {
            stack.append(i)
        } else {
            let j = String(i).replacingOccurrences(of: ")", with: "(").replacingOccurrences(of: "}", with: "{").replacingOccurrences(of: "]", with: "[")
            if stack.isEmpty || !stack.contains(Character(j)) || Character(j) != stack.last! {
                return false
            } else {
                stack.removeLast()
            }
        }
    }
    return stack.isEmpty
}

/*
print(solution("[(])"))
print(solution("([{)}]"))
print(solution("[](){}"))
print(solution("}]()[{"))
print(solution("[)(]"))
print(solution("}}}"))
*/

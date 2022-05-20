
import Foundation

func solution4796() {
    var n = 0
    while let line = readLine()?.split(separator: " ").map({Int($0)!}) {
        if line == [0, 0, 0] {
            break
        }
        var result = 0
        n += 1
        result += (line[2] / line[1]) * line[0]
        result += line[2] % line[1] > line[0] ? line[0] : line[2] % line[1]
        print("Case \(n): \(result)")
    }
}

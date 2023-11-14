
import Foundation

func solution172928(_ park:[String], _ routes:[String]) -> [Int] {
     var park_ = [[String]]()
    var xy = [0, 0]
    for i in 0..<park.count {
        let arr = park[i].map{String($0)}
        park_.append(arr)
        if let index = arr.firstIndex(of: "S") {
            xy = [i, index]
        }
    }

    for route in routes {
        let r = route.components(separatedBy: " ")
        let (d, m) = (r[0], Int(r[1])!)

        switch d {
        case "E":
            if xy[1] + m >= park_[0].count {
                break
            }

            var s = false
            for i in 1...m where park_[xy[0]][xy[1] + i] == "X" {
                s = true
                break
            }

            if !s {
                xy[1] += m
            }
        case "W":
            if xy[1] - m < 0 {
                break
            }

            var s = false
            for i in 1...m where park_[xy[0]][xy[1] - i] == "X" {
                s = true
                break
            }

            if !s {
                xy[1] -= m
            }
        case "S":
            if xy[0] + m >= park_.count {
                break
            }

            var s = false
            for i in 1...m where park_[xy[0] + i][xy[1]] == "X" {
                s = true
                break
            }

            if !s {
                xy[0] += m
            }
        case "N":
            if xy[0] - m < 0 {
                break
            }

            var s = false
            for i in 1...m where park_[xy[0] - i][xy[1]] == "X" {
                s = true
                break
            }

            if !s {
                xy[0] -= m
            }
        default:
            break
        }
    }

    return xy
}

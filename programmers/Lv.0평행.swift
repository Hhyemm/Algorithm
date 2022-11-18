
import Foundation

func solution120875(_ dots:[[Int]]) -> Int {
    let dots = dots.sorted{$0[0] < $1[0]}
    return Double(dots[1][1]-dots[0][1])/Double(dots[1][0]-dots[0][0]) == Double(dots[3][1]-dots[2][1])/Double(dots[3][0]-dots[2][0]) ? 1 : 0
}

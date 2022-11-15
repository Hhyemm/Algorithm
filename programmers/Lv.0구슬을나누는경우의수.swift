
import Foundation

func solution120840(_ balls:Int, _ share:Int) -> Int {
    func dfs(_ b: Int, _ s: Int) -> Int {
        if b == s { return 1 }
        if s == 1 { return b }
        return dfs(b-1, s-1) + dfs(b-1, s)
    }
    return dfs(balls, share)
}

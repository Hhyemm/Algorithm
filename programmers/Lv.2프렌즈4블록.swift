
import Foundation

func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
    var board_ = Array(repeating: [String](), count: n)
    var sameBoardIndex = [(Int,Int)]()
    var answer = 0
    for i in 0..<m {
        var index = 0
        for j in board[i] {
            board_[index].insert(String([j]), at: 0)
            index += 1
        }
    }
    while true {
        for i in 0..<n-1 {
            let mm = min(board_[i].count,board_[i+1].count)
            if mm == 0 {
                continue
            }
            for j in 0..<mm-1 {
                if board_[i][j] == board_[i][j+1] && board_[i][j] == board_[i+1][j] && board_[i][j] == board_[i+1][j+1] {
                    if !sameBoardIndex.contains(where: {$0 == (i,j+1)}) {
                        sameBoardIndex.append((i,j+1))
                    }
                    if !sameBoardIndex.contains(where: {$0 == (i,j)}) {
                        sameBoardIndex.append((i,j))
                    }
                    if !sameBoardIndex.contains(where: {$0 == (i+1,j+1)}) {
                        sameBoardIndex.append((i+1,j+1))
                    }
                    if !sameBoardIndex.contains(where: {$0 == (i+1,j)}) {
                        sameBoardIndex.append((i+1,j))
                    }
                }
            }
        }
        if sameBoardIndex.count == 0 {
            return answer
        }
        sameBoardIndex = sameBoardIndex.sorted{$0.1>$1.1}.sorted{$0.0<$1.0}
        for i in sameBoardIndex {
            for j in 0..<board_.count {
                if i.0 == j {
                    board_[j].remove(at: i.1)
                    answer += 1
                }
            }
        }
        sameBoardIndex = []
    }
    return answer
}

//print(solution(4, 5, ["CCBDE", "AAADE", "AAABF", "CCBBF"])) //14
//print(solution(6, 6, ["TTTANT", "RRFACC", "RRRFCC", "TRRRAA", "TTMMMF", "TMMTTJ"])) //15

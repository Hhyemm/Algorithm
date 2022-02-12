
import Foundation

/*
 1. "N x N" 크기의 정사각 격자(board)가 있다. 위쪽에는 크레인이 있고 오른쪽에는 바구니가 있다. 각 격자 칸에는 다양한 인형이 들어있으며 가장 아래 칸부터 쌓여있다.
 2. 사용자는 moves 배열의 순서로 크레인을 좌우로 움직여 인형을 집어온다. 집어온 인형은 바구니에 쌓이고 가장 아래칸부터 순서대로 쌓인다.
 3. 두 개의 인형이 연속해서 쌓이게 되면 두 인형은 터트려지면서 바구니에서 사라지게 된다.
 4. 사라진 인형의 개수를 리턴한다.
 - for문으로 moves와 board의 범위를 돌며 board의 move번째 열이 0이 아닌(인형) 경우, result(바구니)의 마지막 값이 해당 열과 값이 동일하지 않으면 result(바구니)에 저장한다. result의 마지막 값과 해당 열이 동일하면 result의 마지막 값을 삭제한다. 또한 count += 2를 한다. count는 사라진 인형의 개수를 의미한다. 해당 열은 0으로 변경하고 루프를 벗어나면 count를 반환한다.
 */

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board_ = board
    var result = [Int]()
    var count = 0
    for i in moves {
        for j in 0..<board_.count {
            if board_[j][i-1] != 0 {
                if result.isEmpty || result.last! != board_[j][i-1] {
                    result.append(board_[j][i-1])
                }
                else {
                    result.removeLast()
                    count += 2
                }
                board_[j][i-1] = 0
                break
            }
        }
    }
    return count
}


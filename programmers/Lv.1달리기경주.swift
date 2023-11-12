
import Foundation

func solution178871(_ players:[String], _ callings:[String]) -> [String] {
    var dic = [String: Int]()
    var players = players
    
    for i in 0..<players.count {
        dic[players[i]] = i
    }
    
    for calling in callings {
        let rank = dic[calling]!
        let name = players[rank]
        dic[name]! -= 1
        dic[players[rank-1]]! += 1
        players[rank] = players[rank-1]
        players[rank-1] = name
    }
   
    return players
}



import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    var minValue = prices.first!
    var result = 0
    for i in  0..<prices.count {
        result = max(result, prices[i]-minValue)
        minValue = min(minValue, prices[i])
    }
    return result
}
    

//print(maxProfit([7,1,5,3,6,4]))
//print(maxProfit([7,6,4,3,1]))

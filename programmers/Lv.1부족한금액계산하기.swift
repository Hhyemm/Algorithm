
import Foundation

/*
 1. price는 놀이기구 이용료, money는 가지고 있는 돈, count는 놀이기구 이용 횟수를 의미한다.
 2. price원에서 count번째 이용하면 count배만큼 지불해야 한다.
 3. count번째 이용할 경우, 부족한 money를 출력한다. 만약, money가 부족하지 않으면 0을 출력한다.
 */

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var result = [Int]()
    for i in 1...count {
        result.append(price*i)
    }
    return Int64(result.reduce(0, +) - money >= 0 ? result.reduce(0, +) - money : 0)
}


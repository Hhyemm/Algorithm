
import Foundation

func solution132267(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var n = n
    var result = 0
    
    while n >= a {
        result += (n / a) * b
        n = (n / a) * b + (n % a)
    }
    return result
}

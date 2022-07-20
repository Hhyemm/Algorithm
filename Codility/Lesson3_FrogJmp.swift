
import Foundation

public func solution_FrogJmp(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    let count = (Y - X) / D
    return (Y - X) % D == 0 ? count : count + 1
}

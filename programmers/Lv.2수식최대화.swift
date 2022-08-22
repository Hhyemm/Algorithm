
import Foundation

func solution67257(_ expression:String) -> Int64 {
    var result = [Int]()
    // * -> - -> +
    let strPlus = expression.components(separatedBy: "+")
    var strPlusMinus = strPlus.map{$0.components(separatedBy: "-")}
    for i in 0..<strPlusMinus.count {
        for j in 0..<strPlusMinus[i].count {
            if strPlusMinus[i][j].contains("*") {
                strPlusMinus[i][j] = String(strPlusMinus[i][j].components(separatedBy: "*").map{Int($0)!}.reduce(1, *))
            }
        }
    }
    
    for i in 0..<strPlusMinus.count {
        let x = strPlusMinus[i].map{Int($0)!}.reduce(Int(strPlusMinus[i][0])!, -) + Int(strPlusMinus[i][0])!
        strPlusMinus[i] = [String(x)]
    }
    result.append(abs(strPlusMinus.joined().map{Int($0)!}.reduce(0, +)))
    
    // - -> * -> +
    var strPlusMul = strPlus.map{$0.components(separatedBy: "*")}
    for i in 0..<strPlusMul.count {
        for j in 0..<strPlusMul[i].count {
            if strPlusMul[i][j].contains("-") {
                let x = strPlusMul[i][j].components(separatedBy: "-").map{Int($0)!}
                strPlusMul[i][j] = String(x.reduce(x[0], -)+x[0])
            }
        }
    }
    for i in 0..<strPlusMul.count {
        let x = (strPlusMul[i].map{Int($0)!}.reduce(1, *))
        strPlusMul[i] = [String(x)]
    }
    result.append(abs(strPlusMul.joined().map{Int($0)!}.reduce(0, +)))
    
    // * -> + -> -
    let strMinus = expression.components(separatedBy: "-")
    var strMinusPlus = strMinus.map{$0.components(separatedBy: "+")}
    for i in 0..<strMinusPlus.count {
        for j in 0..<strMinusPlus[i].count {
            if strMinusPlus[i][j].contains("*") {
                let x = strMinusPlus[i][j].components(separatedBy: "*").map{Int($0)!}
                strMinusPlus[i][j] = String(x.reduce(1, *))
            }
        }
    }

    for i in 0..<strMinusPlus.count {
        let x = strMinusPlus[i].map{Int($0)!}.reduce(0, +)
        strMinusPlus[i] = [String(x)]
    }
    var y = strMinusPlus.joined().map{Int($0)!}
    result.append(abs(y.reduce(y[0], -) + y[0]))
    
    // + -> * -> -
    var strMinusMul = strMinus.map{$0.components(separatedBy: "*")}
    for i in 0..<strMinusMul.count {
        for j in 0..<strMinusMul[i].count {
            if strMinusMul[i][j].contains("+") {
                let x = strMinusMul[i][j].components(separatedBy: "+").map{Int($0)!}
                strMinusMul[i][j] = String(x.reduce(0, +))
            }
        }
    }
    
    for i in 0..<strMinusMul.count {
        let x = strMinusMul[i].map{Int($0)!}.reduce(1, *)
        strMinusMul[i] = [String(x)]
    }

    y = strMinusMul.joined().map{Int($0)!}
    result.append(abs(y.reduce(y[0], -) + y[0]))
    
    // - -> + -> *
    let strMul = expression.components(separatedBy: "*")
    var strMulPlus = strMul.map{$0.components(separatedBy: "+")}
    for i in 0..<strMulPlus.count {
        for j in 0..<strMulPlus[i].count {
            if strMulPlus[i][j].contains("-") {
                let x = strMulPlus[i][j].components(separatedBy: "-").map{Int($0)!}
                strMulPlus[i][j] = String(x.reduce(x[0], -)+x[0])
            }
        }
    }
    
    for i in 0..<strMulPlus.count {
        let x = strMulPlus[i].map{Int($0)!}.reduce(0, +)
        strMulPlus[i] = [String(x)]
    }

    y = strMulPlus.joined().map{Int($0)!}
    result.append(abs(y.reduce(1, *)))
    
    // + -> - -> *
    var strMulMinus = strMul.map{$0.components(separatedBy: "-")}
    for i in 0..<strMulMinus.count {
        for j in 0..<strMulMinus[i].count {
            if strMulMinus[i][j].contains("+") {
                let x = strMulMinus[i][j].components(separatedBy: "+").map{Int($0)!}
                strMulMinus[i][j] = String(x.reduce(0, +))
            }
        }
    }
    
    for i in 0..<strMulMinus.count {
        let x = strMulMinus[i].map{Int($0)!}
        strMulMinus[i] = [String(x.reduce(x[0], -)+x[0])]
    }

    y = strMulMinus.joined().map{Int($0)!}
    result.append(abs(y.reduce(1, *)))

    return Int64(result.max()!)
}


import Foundation

func solution20546() {
    let m = Int(readLine()!)!
    let n = readLine()!.split(separator: " ").map{Int($0)!}
    var (jm, jc, jr) = (m, 0, 0)
    var (sm, sc, sr) = (m, 0, 0)

    for (i, v) in n.enumerated() {
        if jm >= v {
            jc += jm / v
            jm = jm % v
        }
        
        if i >= 3 {
            if n[i-3] < n[i-2] && n[i-2] < n[i-1] && n[i-1] < n[i] && sc > 0 {
                sm = sc * v
                sc = 0
            } else if n[i-3] > n[i-2] && n[i-2] > n[i-1] && n[i-1] > n[i] && sm >= v {
                sc += sm / v
                sm = sm % v
            }
        }
    }

    jr = jm + (n.last! * jc)
    sr = sm + (n.last! * sc)

    print(jr > sr ? "BNP" : (jr < sr ? "TIMING" : "SAMESAME"))
}

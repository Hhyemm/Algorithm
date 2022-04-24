
import Foundation

func solution(_ files:[String]) -> [String] {
    var files_ = Array(repeating: [String](), count: files.count)
    for i in 0..<files.count {
        var str = ""
        var numIdx = [Int]()
        var num = ""
        let filesI = files[i].map{String($0)}
        for j in 0..<filesI.count {
            if Character(filesI[j]).isNumber {
                numIdx.append(j)
                num += filesI[j]
                if (j+1 < filesI.count && !Character(filesI[j+1]).isNumber) || j == filesI.count-1  {
                    files_[i].append(str.lowercased())
                    files_[i].append(str)
                    files_[i].append(num)
                    files_[i].append(String(files[i].suffix(files[i].count-numIdx.last!-1)))
                    break
                }
            } else {
                str += String(filesI[j])
            }
        }
    }
    files_ = files_.sorted{Int($0[2])!<Int($1[2])!}.sorted{$0[0]<$1[0]}
    return files_.map{$0[1]+$0[2]+$0[3]}
}

/*
print(solution(["O00321", "O49qcGPHuRLR5FEfoO00321"])) // ["O49qcGPHuRLR5FEfoO00321", "O00321"]
print(solution(["img12.png", "img10.png", "img02.png", "img1.png", "IMG01.GIF", "img2.JPG"]))
print(solution(["F-5 Freedom Fighter", "B-50 Superfortress", "A-10 Thunderbolt II", "F-14 Tomcat"]))
*/

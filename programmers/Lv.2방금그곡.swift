
import Foundation

func solution(_ m:String, _ musicinfos:[String]) -> String {
    let m_ = replace(m)
    var result = [(String,Int)]()
    for musicinfo in musicinfos {
        var musicInfo = musicinfo.split(separator: ",").map{String($0)}
        musicInfo[3] = replace(musicInfo[3])
        let time = 60 * (((Int(String(musicInfo[1].prefix(2)))!) - (Int(String(musicInfo[0].prefix(2)))!))) + ((Int(String(musicInfo[1].suffix(2)))!) - (Int(String(musicInfo[0].suffix(2)))!))
        let arr = musicInfo[3].map{String($0)}
        var info = ""
        for t in 0..<time {
            info += arr[t%arr.count]
        }
        if info.contains(m_) {
            result.append((musicInfo[2],time))
        }
    }
    return result.count > 1 ? result.sorted{$0.1 > $1.1}.first!.0 : result.count == 1 ? result.first!.0 : "(None)"
}

func replace(_ str: String) -> String {
    return str.replacingOccurrences(of: "C#", with: "c").replacingOccurrences(of: "D#", with: "d").replacingOccurrences(of: "F#", with: "f").replacingOccurrences(of: "G#", with: "g").replacingOccurrences(of: "A#", with: "a")
}

/*
print(solution("ABCDEFG",["12:00,12:14,HELLO,CDEFGAB", "13:00,13:05,WORLD,ABCDEF"]))
print(solution("CC#BCC#BCC#BCC#B", ["03:00,03:30,FOO,CC#B", "04:00,04:08,BAR,CC#BCC#BCC#B"]))
print(solution("ABC", ["12:00,12:14,HELLO,C#DEFGAB", "13:00,13:05,WORLD,ABCDEF"]))
print(solution("CCB", ["03:00,03:10,FOO,CCB#CCB", "04:00,04:08,BAR,ABC"]))
print(solution("ABC", ["00:00,00:05,HI,ABC#ABC"]))
print(solution("ABC", ["12:00,12:14,HELLO,CDEFGAB", "13:00,13:14,WORLD,ABCDEF"]))
print(solution("DF", ["6:20,6:50,TEST,DDF"]))

*func solution(_ m:String, _ musicinfos:[String]) -> String {
 let m_ = replace(m)
 var result = [(String,Int)]()
 for musicinfo in musicinfos {
     var musicInfo = musicinfo.split(separator: ",").map{String($0)}
     musicInfo[3] = replace(musicInfo[3])
     let time = 60 * (((Int(String(musicInfo[1].prefix(2)))!) - (Int(String(musicInfo[0].prefix(2)))!))) + ((Int(String(musicInfo[1].suffix(2)))!) - (Int(String(musicInfo[0].suffix(2)))!))
     let arr = musicInfo[3].map{String($0)}
     var info = ""
     for t in 0..<time {
         info += arr[t%arr.count]
     }
     if info.contains(m_) {
         result.append((musicInfo[2],time))
     }
 }
 return result.count > 1 ? result.sorted{$0.1 > $1.1}.first!.0 : result.count == 1 ? result.first!.0 : "(None)"
}

func replace(_ str: String) -> String {
 return str.replacingOccurrences(of: "C#", with: "c").replacingOccurrences(of: "D#", with: "d").replacingOccurrences(of: "F#", with: "f").replacingOccurrences(of: "G#", with: "g").replacingOccurrences(of: "A#", with: "a")
}


print(solution("ABCDEFG",["12:00,12:14,HELLO,CDEFGAB", "13:00,13:05,WORLD,ABCDEF"]))
print(solution("CC#BCC#BCC#BCC#B", ["03:00,03:30,FOO,CC#B", "04:00,04:08,BAR,CC#BCC#BCC#B"]))
print(solution("ABC", ["12:00,12:14,HELLO,C#DEFGAB", "13:00,13:05,WORLD,ABCDEF"]))
print(solution("CCB", ["03:00,03:10,FOO,CCB#CCB", "04:00,04:08,BAR,ABC"]))
print(solution("ABC", ["00:00,00:05,HI,ABC#ABC"]))*/
print(solution("ABC", ["12:00,12:14,HELLO,CDEFGAB", "13:00,13:14,WORLD,ABCDEF"]))
print(solution("DF", ["6:20,6:50,TEST,DDF"]))/

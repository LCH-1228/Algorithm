import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    var result = ""
    for i in 0..<str1.count {
        let str1StartIndex = str1.index(str1.startIndex, offsetBy: i)
        let str2StartIndex = str1.index(str2.startIndex, offsetBy: i)
        
        result += String(str1[str1StartIndex])
        result += String(str2[str2StartIndex])
    }
    return result
}
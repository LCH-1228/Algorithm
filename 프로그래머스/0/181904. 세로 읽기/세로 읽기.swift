import Foundation

func solution(_ myString:String, _ m:Int, _ c:Int) -> String {
    var result = [String]()
    for index in stride(from: c, through: myString.count, by: m) {
        let startIndex = myString.index(myString.startIndex, offsetBy: index - 1)
        let endIndex = myString.index(startIndex, offsetBy: 0)
        result.append(String(myString[startIndex...endIndex]))
    }
    return result.joined()
}
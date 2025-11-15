import Foundation

func solution(_ myString:String) -> String {
    var result = ""
    guard myString.count >= 1 && myString.count <= 1000 else { return "" }
    for i in myString.reversed() {
        result += String(i)
    }
    return result
}
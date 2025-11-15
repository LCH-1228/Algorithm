import Foundation

func solution(_ myString:String) -> String {
    guard myString.count >= 1 && myString.count <= 1000 else { return "" }
    var result = ""
    for charcater in myString {
        if String(charcater).lowercased() == String(charcater) {
            result += String(charcater).uppercased()
        } else if String(charcater).uppercased() == String(charcater) {
            result += String(charcater).lowercased()
        }
    }
    return result
}
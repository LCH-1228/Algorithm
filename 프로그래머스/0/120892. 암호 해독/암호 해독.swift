import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    guard cipher.count >= 1 && cipher.count <= 1000 else { return "" }
    guard code >= 1 && code <= cipher.count else { return "" }
    var result = ""
    var index = 1
    for character in cipher {
        if index % code == 0 {
            result += String(character)
        }
        index += 1
    }
    
    return result
}
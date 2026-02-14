import Foundation

func solution(_ myString:String, _ letter:String) -> String {
    var result = [String]()
    
    for char in myString {
        if char != Character(letter) {
            result.append(String(char))
        }
    }
    
    return result.joined()
}
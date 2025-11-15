import Foundation

func solution(_ myString:String) -> String {
    guard myString.count >= 0 && myString.count <= 100 else { return "" }
    var result = ""
    for character in myString {
        if character.isUppercase {
            result.append(character.lowercased())
        } else {
            result.append(character)
        }
    }
    
    return result.sorted().reduce(""){ String($0) + String($1) }
}
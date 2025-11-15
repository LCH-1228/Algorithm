import Foundation

func solution(_ myString:String) -> String {
    if myString.utf8.filter({ ($0 < 97 || $0 > 122) && $0 != 32 }).count > 0 {
        return ""
    }
    guard myString.count >= 1 && myString.count <= 1000 else { return "" }
    var ArrayMyString = myString.map{ $0 }
    var resultString = ""
    let array = ["a", "e", "i", "o", "u"]
    for character in array {
        ArrayMyString = ArrayMyString.split(separator: Character(character)).flatMap( {$0} )
    }
    
    for index in ArrayMyString {
        resultString += String(index)
    }
    return resultString
}
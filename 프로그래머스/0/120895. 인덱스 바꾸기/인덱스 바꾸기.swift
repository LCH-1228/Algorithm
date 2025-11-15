import Foundation

func solution(_ myString:String, _ num1:Int, _ num2:Int) -> String {
    guard myString.count >= 1 && myString.count <= 100 else { return "" }
    guard 0 <= num1 && num1 <= num2 && num2 <= myString.count else { return "" }
    guard num1 != num2 else { return "" }
    var string = myString
    let firstCharacterIndex = myString.index(myString.startIndex, offsetBy: num1)
    let secondCharacterIndex = myString.index(myString.startIndex, offsetBy: num2)
    let firstCharacter = myString[firstCharacterIndex]
    let secondCharacter = myString[secondCharacterIndex]
    string.remove(at: firstCharacterIndex)
    string.insert(secondCharacter, at: firstCharacterIndex)
    string.remove(at: secondCharacterIndex)
    string.insert(firstCharacter, at: secondCharacterIndex)
    return string
}
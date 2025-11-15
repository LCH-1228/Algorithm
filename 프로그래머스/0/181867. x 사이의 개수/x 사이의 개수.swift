import Foundation

func solution(_ myString:String) -> [Int] {
    guard myString.count >= 1 && myString.count <= 100000 else { return [] }
    var tempArray: [Int] = []
    var tempValue: Int = 0
    var priviousCharacter: Character = "x"
    for character in myString {
        if priviousCharacter == "x" && character == "x" {
            tempArray.append(0)
            priviousCharacter = "x"
        } else if character == "x" {
            if tempValue != 0 {
                tempArray.append(tempValue)
                priviousCharacter = "x"
                tempValue = 0
            }
        } else {
            tempValue += 1
            priviousCharacter = character
        }
    }
    
    if tempValue != 0 {
        tempArray.append(tempValue)
    } else if myString.last == "x" {
        tempArray.append(0)
    }
    
    return tempArray
}
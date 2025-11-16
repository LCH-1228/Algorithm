import Foundation

func solution(_ myStrings:[String], _ parts:[[Int]]) -> String {
    var result = ""
    for (index, part) in parts.enumerated() {
        let myString = myStrings[index]
        let startIndex = myString.index(myString.startIndex, offsetBy: part[0])
        let endIndex = myString.index(myString.startIndex, offsetBy: part[1])
        result += String(myString[startIndex...endIndex])
    }
    return result
}
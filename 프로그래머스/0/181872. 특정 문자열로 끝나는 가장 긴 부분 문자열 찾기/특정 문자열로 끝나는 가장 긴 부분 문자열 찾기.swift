import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    guard let targetRange = myString.range(of: pat, options: .backwards) else {
        return myString
    }
    
    let startIndex = myString.startIndex
    return String(myString[startIndex..<targetRange.upperBound])
}
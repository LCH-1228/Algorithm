import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var result = 0
    var startIndex = myString.startIndex
    
    while startIndex < myString.endIndex {
        if let range = myString.range(of: pat, range: startIndex..<myString.endIndex) {
            result += 1
            startIndex = myString.index(range.lowerBound, offsetBy: 1)
        } else {
            break
        }
    }
    
    return result
}
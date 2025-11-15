import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    let lowerMyString = myString.lowercased()
    let lowerPat = pat.lowercased()
    return lowerMyString.contains(lowerPat) ? 1 : 0
}
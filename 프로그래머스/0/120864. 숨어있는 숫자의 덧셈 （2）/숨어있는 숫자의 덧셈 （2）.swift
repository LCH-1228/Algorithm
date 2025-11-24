import Foundation

func solution(_ myString:String) -> Int {
    return myString.split { $0.isLetter }
    .compactMap { Int($0) }
    .reduce(0, +)
}
import Foundation

func solution(_ s:String) -> Int {
    var convertedString = s
    
    ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight" , "nine"]
    .enumerated()
    .forEach {
        convertedString = convertedString.replacingOccurrences(of: $0.element, with: "\($0.offset)")
    }
    
    return Int(convertedString)!
}
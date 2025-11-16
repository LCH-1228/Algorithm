import Foundation

func solution(_ myString:String) -> [String] {
    var result = [myString]
    for num in 1..<myString.count {
        result.append(String(myString.dropFirst(num)))
    }
    return result.sorted()
}

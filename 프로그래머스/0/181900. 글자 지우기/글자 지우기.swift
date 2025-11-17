import Foundation

func solution(_ myString:String, _ indices:[Int]) -> String {
    var result = myString
    for index in indices.sorted(by: >) {
        let startIndex = result.index(result.startIndex, offsetBy: index)
        result.remove(at: startIndex)
    }
    return result
}
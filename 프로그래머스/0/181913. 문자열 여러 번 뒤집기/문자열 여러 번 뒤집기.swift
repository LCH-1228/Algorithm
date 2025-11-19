import Foundation

func solution(_ myString:String, _ queries:[[Int]]) -> String {
    var result = myString
    for query in queries {
        let startIndex = result.index(result.startIndex, offsetBy: query[0])
        let endIndex = result.index(result.startIndex, offsetBy: query[1])
        result.replaceSubrange(startIndex...endIndex, with: result[startIndex...endIndex].reversed())
    }
    return result
}
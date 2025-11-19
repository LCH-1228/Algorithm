import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    var result = ""
    for (i, char) in code.enumerated() {
        if i % q == r {
            result.append(char)
        }
    }
    return result
}
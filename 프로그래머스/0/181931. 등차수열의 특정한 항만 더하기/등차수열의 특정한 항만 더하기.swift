import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var result = 0
    for (i, isIncluded) in included.enumerated() {
        if isIncluded {
            result += a + d * i
        }
    }
    return result
}
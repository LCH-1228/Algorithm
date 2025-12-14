import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let sorted = score.sorted(by: >)
    let boxCount = sorted.count / m
    var result = 0
    
    for i in 0..<boxCount {
        let minValue = sorted[i * m + (m - 1)]
        result += minValue * m
    }
    
    return result
}
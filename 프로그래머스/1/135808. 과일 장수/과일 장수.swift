import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var totalPrice = 0
    let sortedScore = score.sorted(by: >)
    let boxCount = sortedScore.count / m
    
    for i in 0..<boxCount {
        let minScore = sortedScore[i * m + (m - 1)]
        totalPrice += minScore * m
    }
    
    return totalPrice
}
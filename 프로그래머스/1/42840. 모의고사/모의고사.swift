import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let firstPick = [1, 2, 3, 4, 5]
    let secondPick = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdPick = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var result = [0, 0, 0]
    
    for (i, answer) in answers.enumerated() {
        if answer == firstPick[i % firstPick.count] { result[0] += 1 }
        if answer == secondPick[i % secondPick.count] { result[1] += 1 }
        if answer == thirdPick[i % thirdPick.count] { result[2] += 1 }
    }
    
    let maxScore = result.max()!
    
    return result.enumerated()
        .filter { $0.element == maxScore}
        .map { $0.offset + 1 }
}
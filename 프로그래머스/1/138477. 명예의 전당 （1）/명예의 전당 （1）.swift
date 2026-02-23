import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var lowScores = [Int]()
    var hallOfFrame = [Int]()
    
    for i in 0..<score.count {
        hallOfFrame.append(score[i])
        hallOfFrame.sort(by: >)
        
        if hallOfFrame.count > k {
            hallOfFrame.removeLast()
        }
        
        lowScores.append(hallOfFrame.last!)
    }
    
    return lowScores
}
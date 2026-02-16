import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var result = [Int]()
    var scoreDict = [String : Int]()
    
    for (person, score) in zip(name, yearning) {
        scoreDict[person] = score
    }
    
    for i in 0..<photo.count {
        var tempScore = 0
        
        for j in 0..<photo[i].count {
            let person = photo[i][j]
            tempScore += scoreDict[person] ?? 0
        }
        
        result.append(tempScore)
    }
    
    return result
}
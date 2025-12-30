import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    let typeList = ["R", "T", "C", "F", "J", "M", "A", "N"]
    var scoreDict = [String: Int]()
    for (question, choice) in zip(survey, choices) {
        let score = choice - 4
        
        let target: String
        if score < 0 {
            target = String(question.first!)
        } else {
            target = String(question.last!)
        }
        
        scoreDict[target, default: 0] += abs(score)
    }
    
    var result = ""
    for num in stride(from: 0, through: 6, by: 2) {
        let first = scoreDict[typeList[num], default: 0]
        let second = scoreDict[typeList[num + 1], default: 0]
        
        if first >= second {
            result += typeList[num]
        } else {
            result += typeList[num + 1]
        }
    }
    
    return result
}
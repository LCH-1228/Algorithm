import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var scoreDict = [Character : Int]()
    let surveyList = ["RT", "TR", "FC", "CF", "MJ", "JM", "AN", "NA"]
    let types: [[Character]] = [["R", "T"], ["C", "F"], ["J", "M"], ["A", "N"]]
    var result = ""
    
    for i in 0..<survey.count {
        let surv = survey[i].map { $0 }
        let choice = choices[i]
        
        if choice == 4 { continue }
        if choice < 4 {
            scoreDict[surv[0], default: 0] += abs(choice - 4)
        } else {
            scoreDict[surv[1], default: 0] += (choice - 4)
        }
    }
    
    for type in types {
        let sortedType = type.sorted(by: <)
        
        if scoreDict[sortedType[0]] == nil, scoreDict[sortedType[1]] == nil {
            result.append(sortedType[0])
            continue
        }
        
        guard let first = scoreDict[sortedType[0]] else {
            result.append(sortedType[1])
            continue
        }
        
        guard let second = scoreDict[sortedType[1]] else {
            result.append(sortedType[0])
            continue
        }
        
        if first >= second {
            result.append(sortedType[0])
        } else {
            result.append(sortedType[1])
        }
    }
    
    return result
}
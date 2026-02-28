import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var result = players
    var rankDict = [String: Int]()
    
    for (index, name) in players.enumerated() {
        rankDict[name] = index
    }
    
    for call in callings {
        guard let back = rankDict[call] else { continue }
        
        let front = back - 1
        let frontName = result[front]
        
        result.swapAt(front, back)
        
        rankDict[call] = front
        rankDict[frontName] = back
    }
    
    return result
}
import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var ranking = players
    var playerDict = [String : Int]()
    
    for i in 0..<ranking.count {
        playerDict[ranking[i]] = i
    }
    
    for calling in callings {
        let index = playerDict[calling]!
        let frontName = ranking[index - 1]
        
        ranking[index - 1] = calling
        ranking[index] = frontName
        
        playerDict[calling] = index - 1
        playerDict[frontName] = index
    }
    
    return ranking
}
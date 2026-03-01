import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var countList = Array(repeating: 0, count: k + 1)
    
    for s in score {
        countList[s] += 1
    }
    
    var result = 0
    var leftover = 0
    
    for score in stride(from: k, through: 1, by: -1) {
        let appleCount = countList[score] + leftover
        
        let boxCount = appleCount / m
        
        result += boxCount * score * m
        
        leftover = appleCount % m
    }
    
    return result
}
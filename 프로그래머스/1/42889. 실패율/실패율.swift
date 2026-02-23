import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var failRatioDict = [Int : Float]()
    var userCount =  stages.count
    
    for i in 1...N {
        if userCount == 0 {
            failRatioDict[i] = 0
            continue
        }
        
        var currentStageCount = 0
        
        for j in 0..<stages.count {
            if stages[j] == i {
                currentStageCount += 1
                userCount -= 1
            }
        }
        
        failRatioDict[i] = Float(currentStageCount) / Float(userCount)
    }
    
    return failRatioDict.sorted {
        if $0.value == $1.value {
            return $0.key < $1.key
        }
        return $0.value > $1.value
    }.map { $0.key }
}
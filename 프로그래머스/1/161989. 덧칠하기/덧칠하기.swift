import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var paintCount = 0
    var lastPainted = 0
    
    for current in section {
        if current <= lastPainted { continue }
        
        paintCount += 1
        lastPainted = current + m - 1
    }
    
    return paintCount
}

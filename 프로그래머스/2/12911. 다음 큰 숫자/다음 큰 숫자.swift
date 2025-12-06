import Foundation

func solution(_ n:Int) -> Int {
    let count = n.nonzeroBitCount
    var target = n + 1
    
    while target.nonzeroBitCount != count {
        target += 1
    }
    
    return target
}
import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result = [Int]()
    
    for i in Int(left)...Int(right) {
        let row = i / n + 1
        let column = i % n + 1
        
        result.append(max(row, column))
    }
    
    return result
}
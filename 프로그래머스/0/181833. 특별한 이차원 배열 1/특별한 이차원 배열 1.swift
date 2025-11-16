import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result = [[Int]]()
    
    for i in 0..<n {
        var row = [Int](repeating: 0, count: n)
        row[i] = 1
        result.append(row)
    }
    
    return result
}
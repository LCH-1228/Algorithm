import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    var targetNumber = 1
    
    while targetNumber < arr.count {
        targetNumber <<= 1
    }
    
    result.append(contentsOf: repeatElement(0, count: targetNumber - arr.count))
    
    return result
}
import Foundation

func solution(_ elements:[Int]) -> Int {
    let double = elements + elements
    var result = Set<Int>()
    
    for i in 0..<elements.count {
        var sum = 0
        
        for j in i..<(i + elements.count) {
            sum += double[j]
            result.insert(sum)
        }
    }
    
    return result.count
}
import Foundation

func solution(_ wants:[String], _ numbers:[Int], _ discount:[String]) -> Int {
    var result = 0
    var targetDict = [String: Int]()
    
    for (want, number) in zip(wants, numbers) {
        targetDict[want] = number
    }
    
    for i in 0...(discount.count - 10) {
        var currentDict = [String: Int]()
        
        for j in i..<(i + 10) {
            currentDict[discount[j], default: 0] += 1
        }
        
        if currentDict == targetDict {
            result += 1
        }
    }
    
    return result
}
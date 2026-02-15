import Foundation

func solution(_ numbers:[Int]) -> Int {
    var result = 0
    
    for i in 1...9 {
        result += i
    }
    
    for number in numbers {
        result -= number
    }
    
    return result
}
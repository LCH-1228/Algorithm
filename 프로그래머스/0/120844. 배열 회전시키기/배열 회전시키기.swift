import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var result = numbers
    
    switch direction {
    case "left":
        let first = result.removeFirst()
        result.append(first)
    case "right":
        let last = result.removeLast()
        result.insert(last, at: 0)
    default: break
    }
    
    return result
}

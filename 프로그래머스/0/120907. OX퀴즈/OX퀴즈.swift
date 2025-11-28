import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result = [String]()
    result.reserveCapacity(quiz.count)
    
    for expression in quiz {
        let refined = expression.split(separator: " ")
        let op = refined[1]
        guard let lhs = Int(refined[0]),
              let rhs = Int(refined[2]),
              let target = Int(refined[4])
        else {
            result.append("X")
            continue
        }
        let value: Int
        
        switch op {
        case "+": value = lhs + rhs
        case "-": value = lhs - rhs
        case "*": value = lhs * rhs
        case "/": value = lhs / rhs
        default:
            result.append("X")
            continue
        }
        result.append(value == target ? "O" : "X")
    }
    
    return result
}
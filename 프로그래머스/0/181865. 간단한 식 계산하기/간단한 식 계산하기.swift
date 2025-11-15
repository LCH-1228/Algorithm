import Foundation

func solution(_ binomial:String) -> Int {
    let parts = binomial.split(separator: " ")
    guard parts.count == 3,
        let a = Int(parts[0]),
        let b = Int(parts[2]) else {
            return 0
    }
    
    switch parts[1] {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    default:
        return 0
    }
}
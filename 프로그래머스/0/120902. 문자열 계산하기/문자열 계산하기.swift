import Foundation

func solution(_ myString:String) -> Int {
    let parts = myString.split(separator: " ")
    guard var result = Int(parts[0]) else { return 0 }
    
    for i in stride(from: 1, to: parts.count, by: 2) {
        let operation = parts[i]
        guard let value = Int(parts[i + 1]) else { continue }
        
        if operation == "+" {
            result += value
        } else {
            result -= value
        }
    }
    
    return result
}
import Foundation

func solution(_ s:String) -> Int {
    guard s.count % 2 == 0 else { return 0 }
    
    var count = 0
    var value = s
    
    let mapping: [Character : Character] = ["(" : ")", "[" : "]", "{" : "}"]
    
    for _ in 0..<value.count {
        var stack = ""
        var isValid = true
        
        for char in value {
            if mapping.keys.contains(char) {
                stack.append(char)
            } else {
                if stack.isEmpty {
                    isValid = false
                    break
                }
                
                let last = stack.removeLast()
                
                if mapping[last] != char {
                    isValid = false
                    break
                }
            }
        }
        
        count += isValid && stack.isEmpty ? 1 : 0
        
        let firstValue = value.removeFirst()
        value += String(firstValue)
    }
    return count
}
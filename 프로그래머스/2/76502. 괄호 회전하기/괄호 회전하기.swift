import Foundation

func solution(_ s:String) -> Int {
    var count = 0
    let mapping: [Character : Character] = [")" : "(", "]" : "[", "}" : "{"]
    var brackets = s
    
    for _ in 0..<brackets.count {
        
        var stack = [Character]()
        
        for bracket in brackets {
            
            if let mapping = mapping[bracket] {
                if stack.last == mapping {
                    stack.removeLast()
                } else {
                    stack.append(bracket)
                }
            } else {
                stack.append(bracket)
            }
        }
        
        if stack.isEmpty { count += 1 }
        
        let first = brackets.removeFirst()
        brackets.append(first)
    }
    
    return count
}
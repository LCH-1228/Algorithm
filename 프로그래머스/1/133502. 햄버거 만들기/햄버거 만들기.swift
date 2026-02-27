import Foundation

func solution(_ ingredient: [Int]) -> Int {
    var stack: [Int] = []
    var burgerCount = 0
    
    for item in ingredient {
        stack.append(item)
        
        let count = stack.count
        if count >= 4 {
            if stack[count - 4] == 1 &&
                  stack[count - 3] == 2 &&
                  stack[count - 2] == 3 &&
                  stack[count - 1] == 1 {
                stack.removeLast(4)
                burgerCount += 1
            }
        }
    }
    
    return burgerCount
}
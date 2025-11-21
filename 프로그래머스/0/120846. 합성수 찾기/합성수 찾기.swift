import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    
    for num in 1...n {
        var count = 0
        for i in stride(from: 1, through: num, by: 1) {
            if num % i == 0 {
                count += 1
            }
        }
        
        if count >= 3 {
            result += 1
        }
        
        count = 0
    }
    
    return result
}
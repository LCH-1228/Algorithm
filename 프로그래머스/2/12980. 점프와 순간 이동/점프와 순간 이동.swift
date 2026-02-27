import Foundation

func solution(_ n:Int) -> Int  {
    var location = n
    var result = 0
    
    while location > 0 {
        if location % 2 == 0 {
            location /= 2
        } else {
            location -= 1
            result += 1
        }
    }
    
    return result
}
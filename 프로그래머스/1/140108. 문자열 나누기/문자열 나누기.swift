import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    var base: Character? = nil
    var sameCount = 0
    var diffCount = 0
    
    for char in s {
        if base == nil {
            base = char
            sameCount = 1
            diffCount = 0
        } else {
            if base == char {
                sameCount += 1
            } else {
                diffCount += 1
            }
        }
        
        if sameCount == diffCount {
            result += 1
            base = nil
            sameCount = 0
            diffCount = 0
        }
    }
    
    if base != nil {
        result += 1
    }
    
    return result
}
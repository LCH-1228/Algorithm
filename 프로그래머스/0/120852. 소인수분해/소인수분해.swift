import Foundation

func solution(_ n:Int) -> [Int] {
    var result = Set<Int>()
    var tempValue = n
    var i = 2
    
    while i * i <= tempValue {
        if tempValue % i == 0 {
            result.insert(i)
            while tempValue % i == 0 {
                tempValue /= i
            }
        }
        i += 1
    }
    
    if tempValue > 1 {
        result.insert(tempValue)
    }
    
    return result.sorted()
}

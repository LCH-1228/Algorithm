import Foundation

func solution(_ numList:[Int]) -> Int {
    var result = 0
    for num in numList {
        var tempValue = num
        while tempValue != 1 {
            if tempValue & 1 == 0 {
                tempValue /= 2
                result += 1
            } else {
                tempValue -= 1
            }
        }
    }
    return result
}
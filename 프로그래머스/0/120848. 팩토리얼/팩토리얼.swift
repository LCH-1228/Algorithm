import Foundation

func solution(_ n:Int) -> Int {
    var tempValue = 1
    for i in 1...10 {
        if i * tempValue > n {
            return i - 1
        }
        tempValue *= i
    }
    return 10
}
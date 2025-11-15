import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    guard n > 0 && n <= 1000 else { return 0 }
    for i in 1...n {
        if i % 2 == 0 {
            result += i
        }
    }
    return result
}
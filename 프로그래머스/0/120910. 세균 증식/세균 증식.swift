import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    guard n >= 1 && n <= 10 else { return 0 }
    guard t >= 1 && t <= 15 else { return 0 }
    var result = n
    for i in 1...t {
        result *= 2
    }
    return result
}
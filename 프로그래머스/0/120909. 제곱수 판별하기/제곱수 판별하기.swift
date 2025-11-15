import Foundation

func solution(_ n:Int) -> Int {
    guard n >= 1 && n <= 1000000 else { return 0 }
    for i in 1...n {
        if i*i == n {
            return 1
        }
    }
    return 2
}
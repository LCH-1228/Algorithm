import Foundation

func solution(_ n:Int) -> Int {
    guard n >= 1 && n <= 1000000 else { return 0 }
    var tempResult = [[Int]]()
    for i in 1...n {
        if n % i == 0 {
            tempResult.append([i, n/i])
        }
    }
    return tempResult.count
}
import Foundation

func solution(_ n:Int) -> [Int] {
    guard n >= 1 && n <= 10000 else { return [] }
    var result = [Int]()
    for i in 1...n {
        if n % i == 0 {
            result.append(i)
        }
    }
    return result
}
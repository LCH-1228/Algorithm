import Foundation

func solution(_ n:Int) -> [Int] {
    guard n >= 1 && n <= 100 else { return [] }
    var result = [Int]()
    for i in 1...n {
        if i % 2 == 1 {
            result.append(i)
        }
    }
    return result
}
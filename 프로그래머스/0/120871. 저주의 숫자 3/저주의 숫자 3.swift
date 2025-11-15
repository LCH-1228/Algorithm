import Foundation

func solution(_ n:Int) -> Int {
    guard n >= 1 && n <= 100 else { return 0 }
    var result = 0
    for _ in 1...n {
        result += 1
        while result % 3 == 0 || String(result).contains("3") {
            result += 1
        }
    }
    
    return result
}
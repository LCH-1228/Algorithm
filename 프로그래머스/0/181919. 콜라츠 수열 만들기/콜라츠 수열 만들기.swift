import Foundation

func solution(_ n:Int) -> [Int] {
    var result = [n]
    var num = n
    while num != 1 {
        num = num % 2 == 0 ? num / 2 : num * 3 + 1
        result.append(num)
    }
    return result
}
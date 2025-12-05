import Foundation

func solution(_ s:String) -> [Int] {
    var current = s
    var repeatCount = 0
    var removeCount = 0
    
    while current != "1" {
        let ones = current.filter { $0 == "1"}
        removeCount += current.count - ones.count
        repeatCount += 1
        current = String(ones.count, radix: 2)
    }
    
    return [repeatCount, removeCount]
}
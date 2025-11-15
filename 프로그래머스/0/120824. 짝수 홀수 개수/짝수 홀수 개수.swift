import Foundation

func solution(_ numList:[Int]) -> [Int] {
    guard numList.count >= 1 && numList.count <= 100 else { return [] }
    guard numList.filter({ $0 >= 0 && $0 <= 1000}).count == numList.count else { return [] }
    var odd = 0
    var even = 0
    for i in numList {
        if i % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    return [even, odd]
}
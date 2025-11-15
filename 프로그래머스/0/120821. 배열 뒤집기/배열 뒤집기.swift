import Foundation

func solution(_ numList:[Int]) -> [Int] {
    guard numList.count >= 1 && numList.count <= 1000 else { return [] }
    guard numList.filter({$0 >= 0 && $0 <= 1000}).count == numList.count else { return [] }
    var result = [Int]()
    for i in numList.reversed() {
        result.append(i)
    }
    return result
}
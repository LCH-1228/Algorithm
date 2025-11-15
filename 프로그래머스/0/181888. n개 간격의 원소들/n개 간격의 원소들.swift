import Foundation

func solution(_ numList:[Int], _ n:Int) -> [Int] {
    guard numList.count >= 5 && numList.count <= 20 else { return [] }
    guard numList.filter({ $0 >= 1 || $0 <= 9 }).count == numList.count else { return [] }
    guard n >= 1 && n <= 4 else { return [] }
    var result = [Int]()
    for i in stride(from: 0, through: numList.count - 1, by: n) {
        result.insert(numList[i], at: result.count)
    }
    return result
}
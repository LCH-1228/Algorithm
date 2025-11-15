import Foundation

func solution(_ arr:[Int]) -> [Int] {
    guard arr.count >= 1 && arr.count <= 100 else { return [] }
    guard arr.filter({ $0 >= 1 || $0 <= 100}).count == arr.count else { return [] }
    var result = [Int]()
    for number in arr {
        result.insert(contentsOf: Array(repeating: number, count: number), at: result.count)
    }
    return result
}
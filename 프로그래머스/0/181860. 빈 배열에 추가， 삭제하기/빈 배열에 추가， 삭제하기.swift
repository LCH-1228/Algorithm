import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var result = [Int]()
    for (num, isFlaged) in zip(arr, flag) {
        if isFlaged {
            var tempArray = Array(repeating: num, count: num * 2)
            result.append(contentsOf: tempArray)
        } else {
            result.removeLast(num)
        }
    }
    return result
}
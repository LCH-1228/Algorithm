import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result = [Int]()
    result.reserveCapacity(arr.count)
    for num in arr {
        if num >= 50 && (num & 1 == 0) {
            result.append(num / 2)
        } else if num < 50 && (num & 1 == 1) {
            result.append(num * 2)
        } else {
            result.append(num)
        }
    }
    return result
}

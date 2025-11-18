import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result = [Int]()
    var i = 0
    
    while i < arr.count {
        if result.isEmpty {
            result.append(arr[i])
            i += 1
        } else if let last = result.last, last < arr[i] {
            result.append(arr[i])
            i += 1
        } else {
            result.popLast()
        }
    }
    
    return result
}
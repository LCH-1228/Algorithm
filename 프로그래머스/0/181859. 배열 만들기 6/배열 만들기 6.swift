import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result = [Int]()
    var i = 0
    
    while i < arr.count {
        if result.isEmpty {
            result.append(arr[i])
        } else if let last = result.last, last == arr[i] {
            result.popLast()
        } else if let last = result.last, last != arr[i] {
            result.append(arr[i])
        }
        i += 1
    }
    return !result.isEmpty ? result : [-1]
}
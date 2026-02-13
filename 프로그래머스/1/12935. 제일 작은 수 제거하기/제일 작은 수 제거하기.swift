func solution(_ arr:[Int]) -> [Int] {
    guard arr.count != 1 else { return [-1] }
    var result = arr
    var minIndex = 0
    
    for i in 0..<arr.count {
       if arr[i] < arr[minIndex] {
          minIndex = i
        }
    }

    result.remove(at: minIndex)
    return result
}
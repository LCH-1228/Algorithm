func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    guard divisor != 1 else { return arr.sorted() }
    
    var result = [Int]()
    
    for i in 0..<arr.count {
        if arr[i] % divisor == 0 {
            result.append(arr[i])
        }
    }
    
    return result.isEmpty ? [-1] : result.sorted()
}
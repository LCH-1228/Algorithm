func solution(_ arr:[Int]) -> [Int] {
    guard arr.count != 1 else { return [-1] }
    let target = arr.min()!
    return arr.filter { $0 != target }
}
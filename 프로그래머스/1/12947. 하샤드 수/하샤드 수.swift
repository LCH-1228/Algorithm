func solution(_ x:Int) -> Bool {
    let digitList = "\(x)".compactMap { Int($0.description) }
    let digitSum = digitList.reduce(0, +)
    return x % digitSum == 0
}
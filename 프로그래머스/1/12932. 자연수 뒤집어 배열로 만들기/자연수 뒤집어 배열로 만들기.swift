func solution(_ n:Int64) -> [Int] {
    let digitList = "\(n)".compactMap { Int($0.description) }
    return digitList.reversed()
}
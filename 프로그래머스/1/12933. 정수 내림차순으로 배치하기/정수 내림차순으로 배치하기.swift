func solution(_ n:Int64) -> Int64 {
    let sortedDigits = String("\(n)".sorted(by: >))
    return Int64(sortedDigits)!
}
func solution(_ n:Int) -> String {
    let patternCount = n / 2
    let pattern = String(repeating: "수박", count: patternCount)
    return n % 2 == 0 ? pattern : pattern + "수"
}
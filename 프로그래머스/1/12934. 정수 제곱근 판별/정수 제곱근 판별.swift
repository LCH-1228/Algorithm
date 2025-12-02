func solution(_ n:Int64) -> Int64 {
    let root = Int64(Double(n).squareRoot())
    return root * root == n ? (root + 1) * (root + 1) : -1
}
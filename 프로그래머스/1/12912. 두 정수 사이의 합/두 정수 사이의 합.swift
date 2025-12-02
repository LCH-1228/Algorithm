func solution(_ a:Int, _ b:Int) -> Int64 {
    guard a != b else { return Int64(a) }
    let min = a < b ? a : b
    let max = a < b ? b : a
    return Int64((min...max).reduce(0, +))
}
func solution(_ n:Int) -> Int {
    guard n != 0 else { return 0 }
    var result = 0
    for i in 1...n where n % i == 0 {
        result += i
    }
    return result
}
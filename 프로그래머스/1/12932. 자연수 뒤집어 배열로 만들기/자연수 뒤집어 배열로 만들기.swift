func solution(_ n: Int64) -> [Int] {
    var num = Int(n)
    var result = [Int]()
    
    while num > 0 {
        result.append(num % 10)
        num /= 10
    }
    
    return result
}
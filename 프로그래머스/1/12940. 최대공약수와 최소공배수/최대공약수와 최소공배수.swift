func solution(_ n:Int, _ m:Int) -> [Int] {
    func gcd(_ x: Int, _ y: Int) -> Int {
        if y == 0 {
            return x
        }
        return gcd(y, x % y)
    }
  
    let commonDivisor = gcd(n, m)
    let commonMultiple = n * m / commonDivisor
    return [commonDivisor, commonMultiple]
}
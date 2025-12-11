func solution(_ arr:[Int]) -> Int {
    func gcd(_ x: Int, _ y: Int) -> Int {
        if y == 0 { return x }
        return gcd(y, x % y)
    }
    
    return arr.reduce(1) {
        let commonDivisor = gcd($0, $1)
        return ($0 * $1) / commonDivisor
    }
}
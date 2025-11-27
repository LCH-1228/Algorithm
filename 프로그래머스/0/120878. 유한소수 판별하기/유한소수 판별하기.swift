import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    // Euclidean algorithm
    func gcd(_ x: Int, _ y: Int) -> Int {
        let r = x % y
        if r == 0 {
            return y
        }
        return gcd(y, r)
    }
    
    let divisor = gcd(a, b)
    var denominator = b / divisor
    
    while denominator % 2 == 0 { denominator /= 2}
    while denominator % 5 == 0 { denominator /= 5}
    
    return denominator == 1 ? 1 : 2
}
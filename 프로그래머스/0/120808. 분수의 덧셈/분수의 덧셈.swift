import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    func gcd(_ x: Int, _ y: Int) -> Int {
        let r = x % y
        if r == 0 {
            return y
        }
        return gcd(y, r)
    }
    
    let numer = numer1 * denom2 + numer2 * denom1
    let denom = denom1 * denom2
    let commonDivisor = gcd(numer, denom)
    return [numer / commonDivisor, denom / commonDivisor]
}
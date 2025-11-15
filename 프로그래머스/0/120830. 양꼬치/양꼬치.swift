import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let priceOfN = 12000
    let priceOfK = 2000
    guard n > 0 && n < 1000 else { return 0 }
    guard k >= n/10 && k < 1000 else { return 0 }
    if n/10 > 0 {
        return (n * priceOfN) + ((k - n/10) * priceOfK)
    } else {
        return (n * priceOfN) + (k * priceOfK)
    }
}
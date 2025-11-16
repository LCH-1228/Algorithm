import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    guard slice >= 2 && slice <= 10 else { return 0 }
    guard n >= 1 && n <= 100 else { return 0 }
    guard (n % slice) != 0 else { return n / slice }
    return (n / slice) + 1
}
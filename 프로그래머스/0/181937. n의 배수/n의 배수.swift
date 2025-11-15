import Foundation

func solution(_ num:Int, _ n:Int) -> Int {
    guard (num >= 2 && num <= 100) && (n >= 2 && n <= 9) else { return 0 }
    if num % n == 0 {
        return 1
    } else {
        return 0
    }
}

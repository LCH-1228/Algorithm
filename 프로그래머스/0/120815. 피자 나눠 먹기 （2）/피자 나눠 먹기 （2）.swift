import Foundation

func solution(_ n:Int) -> Int {
    guard n >= 1 && n <= 100 else { return 0}
    let sliceOfPizza: Int = 6
    for i in 1...50 {
        if ((sliceOfPizza * i) % n) == 0 {
            return i
        }
    }
    return 0
}
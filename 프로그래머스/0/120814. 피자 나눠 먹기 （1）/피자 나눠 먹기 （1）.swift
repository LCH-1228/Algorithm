import Foundation

func solution(_ n:Int) -> Int {
    let sliceOfAPizza = 7
    guard n >= 1 && n <= 1000 else { return 0 }
    guard (n % sliceOfAPizza) != 0 else { return n / sliceOfAPizza }
    return (n / sliceOfAPizza) + 1
}
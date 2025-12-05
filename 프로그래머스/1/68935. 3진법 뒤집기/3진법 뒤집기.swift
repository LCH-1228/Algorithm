import Foundation

func solution(_ n:Int) -> Int {
    let ternary = String(n, radix: 3)
    let reversed = String(ternary.reversed())
    return Int(reversed, radix: 3)!
}
import Foundation

func solution(_ n:Int) -> Int {
    let numList = Array(1...n).filter{ n % 2 == 0 ? $0 % 2 == 0 : $0 % 2 == 1 }
    return n % 2 == 0 ? numList.reduce(0) { $0 + $1 * $1 } : numList.reduce(0, +)
}
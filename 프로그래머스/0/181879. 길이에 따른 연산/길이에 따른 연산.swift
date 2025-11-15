import Foundation

func solution(_ numList:[Int]) -> Int {
    guard numList.count >= 2 && numList.count <= 20 else { return 0 }
    guard (numList.contains{ $0 >= 1} ) && (numList.contains{ $0 <= 9 }) else { return 0 }
    if numList.count >= 11 {
        return numList.reduce(0) { $0 + $1 }
    } else {
        return numList.reduce(1) { $0 * $1 }
    }
}
import Foundation

func solution(_ n:Int, _ numList:[Int]) -> [Int] {
    guard n >= 1 && n <= 10000 else { return [] }
    guard numList.count >= 1 && numList.count <= 100 else { return [] }
    guard numList.filter{ $0 < 0 || $0 > 100000 }.count == 0 else { return [] }
    return numList.filter{ ($0 % n) == 0 }
}
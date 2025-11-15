import Foundation

func solution(_ numList:[Int]) -> Int {
    return numList.firstIndex(where: { $0 < 0 }) ?? -1
}
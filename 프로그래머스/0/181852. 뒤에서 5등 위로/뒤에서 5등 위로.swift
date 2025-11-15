import Foundation

func solution(_ numList:[Int]) -> [Int] {
    return Array(numList.sorted().dropFirst(5)) //
}
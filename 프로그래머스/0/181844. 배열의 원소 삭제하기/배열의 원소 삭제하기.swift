import Foundation

func solution(_ arr:[Int], _ deleteList:[Int]) -> [Int] {
    return arr.filter{ !deleteList.contains($0) }
}
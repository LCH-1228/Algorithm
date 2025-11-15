import Foundation

func solution(_ array:[Int]) -> [Int] {
    guard array.count >= 1 && array.count <= 100 else { return [] }
    guard array.filter({ $0 >= 1 || $0 <= 100}).count == array.count else { return [] }
    guard let maxNumber = array.max() else { return [] }
    guard let indexOfMaxNumber = array.firstIndex(of: maxNumber) else { return [] }
    return [maxNumber, indexOfMaxNumber]
}
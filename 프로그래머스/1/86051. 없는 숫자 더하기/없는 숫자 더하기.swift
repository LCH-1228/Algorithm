import Foundation

func solution(_ numbers:[Int]) -> Int {
    let total = Array(1...9).reduce(0, +)
    return numbers.reduce(total, -)
}
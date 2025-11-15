import Foundation

func solution(_ numbers:[Int]) -> Int {
    let sortedNumbers = numbers.sorted()
    let positiveProduct = sortedNumbers[sortedNumbers.count - 1] * sortedNumbers[sortedNumbers.count - 2]
    let negativeProduct = sortedNumbers[0] * sortedNumbers[1]
    return max(positiveProduct, negativeProduct)
}
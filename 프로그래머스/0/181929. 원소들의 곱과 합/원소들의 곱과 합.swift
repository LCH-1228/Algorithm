import Foundation

func solution(_ numList:[Int]) -> Int {
    let product = numList.reduce(1, *)
    let sum = numList.reduce(0, +)
    return product < sum * sum ? 1 : 0
}
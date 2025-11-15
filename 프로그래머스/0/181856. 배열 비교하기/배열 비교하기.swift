import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    guard arr1.count >= arr2.count else { return -1 }
    guard arr1.count <= arr2.count else { return 1 }
    let arr1Sum = arr1.reduce(0, +)
    let arr2Sum = arr2.reduce(0, +)
    guard arr1Sum >= arr2Sum else { return -1 }
    guard arr1Sum <= arr2Sum else { return 1 }
    return 0
}
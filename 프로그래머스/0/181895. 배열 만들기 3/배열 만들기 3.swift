import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    let i = intervals.flatMap { $0 }
    let first = arr[i[0]...i[1]]
    let second = arr[i[2]...i[3]]
    return Array(first + second)
}
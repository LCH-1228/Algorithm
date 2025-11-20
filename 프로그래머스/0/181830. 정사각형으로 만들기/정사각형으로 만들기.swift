import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    let column = arr.count
    let row = arr.first?.count ?? 0
    if column == row {
        return arr
    } else if column > row {
        return arr.map { $0 + Array(repeating: 0, count: column - row) }
    } else {
        return arr + Array(repeating: Array(repeating: 0, count: row), count: row - column)
    }
}
import Foundation

func solution(_ arr:[Int], _ queries:[Int]) -> [Int] {
    var result = arr[...]
    for (i, query) in queries.enumerated() {
        if i % 2 == 0 {
            result = result.prefix(query + 1)
        } else {
            result = result.dropFirst(query)
        }
    }
    return Array(result)
}

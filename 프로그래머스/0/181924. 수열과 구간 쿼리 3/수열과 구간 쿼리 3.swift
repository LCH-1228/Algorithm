import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    for query in queries {
        let tempValue = result[query[0]]
        result[query[0]] = result[query[1]]
        result[query[1]] = tempValue
    }
    return result
}
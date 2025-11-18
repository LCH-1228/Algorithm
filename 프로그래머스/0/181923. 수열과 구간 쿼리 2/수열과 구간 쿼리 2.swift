import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = [Int]()
    for query in queries {
        let range = arr[query[0]...query[1]]
        let targetNum = range.filter({ $0 > query[2] }).min() ?? -1
        result.append(targetNum)
    }
    return result
}

import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    let sortedCounts = Dictionary(grouping: tangerine, by: { $0 })
    .mapValues(\.count)
    .sorted { $0.value > $1.value }
    .map(\.value)
    
    var kinds = 0
    var count = 0
    
    for quantity in sortedCounts where count < k {
        count += quantity
        kinds += 1
    }
    
    return kinds
}
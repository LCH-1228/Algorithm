import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var remain = budget
    var count = 0
    
    for cost in d.sorted() {
        if remain < cost { break }
        remain -= cost
        count += 1
    }
    
    return count
}
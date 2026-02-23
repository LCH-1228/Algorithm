import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var remain = budget
    var count = 0
    
    for price in d.sorted() {
        if remain < price { break }
        remain -= price
        count += 1
    }
    
    return count
}
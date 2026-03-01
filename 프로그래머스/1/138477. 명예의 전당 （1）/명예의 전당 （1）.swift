import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var result = [Int]()
    var hall = [Int]()
    
    for s in score {
        if hall.count == k, let last = hall.last, last >= s {
            result.append(last)
            continue
        }
        
        var left = 0
        var right = hall.count
        
        while left < right {
            let mid = (left + right) / 2
            
            if hall[mid] < s {
                right = mid
            } else {
                left = mid + 1
            }
        }
        hall.insert(s, at: left)
        
        if hall.count > k {
            hall.removeLast()
        }
        
        result.append(hall.last!)
    }
    
    return result
}
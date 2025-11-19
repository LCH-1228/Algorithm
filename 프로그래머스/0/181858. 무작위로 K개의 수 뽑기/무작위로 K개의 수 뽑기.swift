import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var arrSet = Set<Int>()
    var result = [Int]()
    
    for num in arr where result.count != k {
        if arrSet.insert(num).inserted {
            result.append(num)
        }
    }
    
    if result.count != k {
        result.append(contentsOf: repeatElement(-1, count: k - result.count))
    }
    
    return result
}
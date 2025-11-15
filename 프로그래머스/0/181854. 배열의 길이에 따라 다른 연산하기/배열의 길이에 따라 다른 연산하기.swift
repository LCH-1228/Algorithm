import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var result = arr
    let isOdd = arr.count % 2 == 1
    
    for i in stride(from: isOdd ? 0 : 1, to: result.count, by: 2) {
        result[i] += n
    }
    
    return result
}
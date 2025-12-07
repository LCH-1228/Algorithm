import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result = Set<Int>()
    let count = numbers.count
    
    for i in 0..<count - 1 {
        for j in i + 1..<count {
            result.insert(numbers[i] + numbers[j])
        }
    }
    
    return Array(result).sorted()
}

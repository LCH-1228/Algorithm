import Foundation

func solution(_ numbers:[Int]) -> Double {
    guard (numbers.filter({ $0 >= 0 && $0 <= 1000}).count == numbers.count) else { return 0 }
    guard numbers.count >= 1 && numbers.count <= 100 else { return 0 }
    return Double(numbers.reduce(0){$0 + $1}) / Double(numbers.count)
}
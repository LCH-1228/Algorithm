import Foundation

func solution(_ numbers:[Int]) -> Int {
    guard numbers.filter{ $0 < 0 || $0 > 10000 }.count == 0 else { return 0 }
    guard numbers.count >= 0 && numbers.count <= 100 else { return 0 }
    return numbers.sorted()[numbers.count - 2] * numbers.sorted()[numbers.count - 1]
}
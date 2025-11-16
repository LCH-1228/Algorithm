import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    guard numbers.count >= 1 && numbers.count <= 1000 else { return [] }
    guard (numbers.contains{$0 >= -10000}) && (numbers.contains{$0 <= 10000}) else { return []}
    return numbers.map{$0 * 2}
}

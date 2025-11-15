import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    guard numbers.count >= 2 && numbers.count <= 30 else { return [] }
    guard numbers.filter({ $0 < 0 || $0 > 1000 }).count == 0 else { return [] }
    guard 0 <= num1 && num1 < num2 && num2 < numbers.count else { return [] }
    return Array(numbers[num1...num2])
}
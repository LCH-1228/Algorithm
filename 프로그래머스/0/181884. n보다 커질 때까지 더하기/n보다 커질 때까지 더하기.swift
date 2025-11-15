import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var result = 0
    for number in numbers where result <= n { result += number }
    return result
}
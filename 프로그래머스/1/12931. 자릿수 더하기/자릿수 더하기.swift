import Foundation

func solution(_ n:Int) -> Int {
    return String(n)
    .reduce(into: 0) { result, num in
        result += num.wholeNumberValue!
    }
}
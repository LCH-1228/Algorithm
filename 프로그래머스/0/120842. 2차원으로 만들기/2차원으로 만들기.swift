import Foundation

func solution(_ numList:[Int], _ n:Int) -> [[Int]] {
    return stride(from: 0, to: numList.count, by: n).map {
        Array(numList[$0..<$0 + n])
    }
}
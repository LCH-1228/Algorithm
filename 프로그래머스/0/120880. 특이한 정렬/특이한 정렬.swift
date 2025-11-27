import Foundation

func solution(_ numList:[Int], _ n:Int) -> [Int] {
    return numList.sorted { a, b in
        let deltaA = abs(a - n)
        let deltaB = abs(b - n)
        if deltaA == deltaB {
            return a > b
        }
        return deltaA < deltaB
    }
}
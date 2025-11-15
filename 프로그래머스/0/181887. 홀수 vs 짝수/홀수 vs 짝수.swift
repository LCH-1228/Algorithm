import Foundation

func solution(_ numList:[Int]) -> Int {
    var oddIndexTotal = 0
    var evenIndexTotal = 0
    for (index, num) in numList.enumerated() {
        if index & 1 == 1 {
            oddIndexTotal += num
        } else {
            evenIndexTotal += num
        }
    }
    return oddIndexTotal > evenIndexTotal ? oddIndexTotal : evenIndexTotal
}
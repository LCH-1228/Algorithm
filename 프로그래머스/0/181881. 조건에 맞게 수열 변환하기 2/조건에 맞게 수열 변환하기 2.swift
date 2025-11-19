import Foundation

func solution(_ arr:[Int]) -> Int {
    var nextArr = arr
    for (i, num) in arr.enumerated() {
        if num % 2 == 0, num >= 50 {
            nextArr[i] /= 2
        } else if num % 2 == 1, num < 50 {
            nextArr[i] *= 2
            nextArr[i] += 1
        }
    }
    
    if nextArr == arr {
        return 0
    } else {
        return solution(nextArr) + 1
    }
}
import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return zip(absolutes, signs).reduce(0) { sum, pair in
        let (num, sign) = pair
        switch sign {
        case true:
            return sum + num
        case false:
            return sum - num
        }
    }
}
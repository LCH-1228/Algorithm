import Foundation

func solution(_ number:[Int]) -> Int {
    var count = 0
    let n = number.indices
    
    for i in n {
        for j in n where j > i {
            for k in n where k > j {
                if number[i] + number[j] + number[k] == 0 {
                    count += 1
                }
            }
        }
    }
    return count
}
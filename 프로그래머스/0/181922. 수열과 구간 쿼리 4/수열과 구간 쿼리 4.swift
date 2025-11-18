import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    
    for query in queries {
        let (s, e, k) = (query[0] , query[1], query[2])
        for i in s...e where i == 0 || i % k == 0 {
            result[i] += 1
        }
    }
    
    return result
}
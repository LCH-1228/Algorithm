import Foundation

func solution(_ lottos:[Int], _ winNums:[Int]) -> [Int] {
    var winCount = 7
    let zero = lottos.filter { $0 == 0}.count    
    
    for i in 0..<lottos.count {
        for j in 0..<winNums.count {
            if lottos[i] == winNums[j] {
                winCount -= 1
            }
        }
    }
    
    let best = winCount - zero > 6 ? 6 : winCount - zero
    let worst = winCount > 6 ? 6 : winCount
    
    return [best, worst]
}
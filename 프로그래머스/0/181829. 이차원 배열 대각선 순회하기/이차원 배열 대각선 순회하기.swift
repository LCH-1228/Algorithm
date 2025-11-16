import Foundation

func solution(_ board:[[Int]], _ k:Int) -> Int {
    var result = 0
    for (i, iNums) in board.enumerated() {
        for (j, jNum) in iNums.enumerated() where i + j <= k {
            result += jNum
        }
    }
    return result
}
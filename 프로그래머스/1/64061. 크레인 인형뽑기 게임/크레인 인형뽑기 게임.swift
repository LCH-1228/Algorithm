import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    let count = board.count
    var convertedBoard = Array(repeating: Array(repeating: 0, count: count), count: count)
    var stack = [Int]()
    var score = 0
    
    for i in 0..<count {
        for j in 0..<count {
            convertedBoard[j][i] = board[i][j]
        }
    }
    
    var filteredBoard = convertedBoard.map { $0.filter { $0 != 0 }}
    
    for move in moves {
        let row = filteredBoard[move - 1]
        
        guard let target = row.first else {
            continue
        }
        
        if stack.last == row.first {
            filteredBoard[move - 1].removeFirst()
            stack.removeLast()
            score += 2
        } else {
            stack.append(target)
            filteredBoard[move - 1].removeFirst()
        }
    }
    
    return score
}
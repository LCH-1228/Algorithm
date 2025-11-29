import Foundation

func solution(_ board:[[Int]]) -> Int {
    let n = board.count
    let totalCells = n * n
    var mineIndices = [Int]()
    
    for i in 0..<n {
        for j in 0..<n {
            if board[i][j] == 1 {
                mineIndices.append(i * n + j)
            }
        }
    }
    
    var dangerZones = Array(repeating: false, count: totalCells)
    let mineOffset = [
        (-1, -1), (0, -1), (1, -1),
        (-1, 0), (0, 0), (1, 0),
        (-1, 1), (0, 1), (1, 1),
    ]
    
    for index in mineIndices {
        let row = index / n
        let column = index % n
        
        for (offsetX, offsetY) in mineOffset {
            let x = column + offsetX
            let y = row + offsetY
            
            if x >= 0 && x < n && y >= 0, y < n {
                dangerZones[y * n + x] = true
            }
        }
    }
    
    var safeCount = 0
    for i in 0..<totalCells where !dangerZones[i] {
        safeCount += 1
    }
    
    return safeCount
}
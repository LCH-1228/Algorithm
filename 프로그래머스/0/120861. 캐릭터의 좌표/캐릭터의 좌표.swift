import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let xDimension = (board[0] - 1) / 2
    let yDimension = (board[1] - 1) / 2
    var (x, y) = (0, 0)
    
    for direction in keyinput {
        switch direction {
        case "left" where x > -xDimension:
            x -= 1
        case "right" where x < xDimension:
            x += 1
        case "up" where y < yDimension:
            y += 1
        case "down" where y > -yDimension:
            y -= 1
        default: continue
        }
    }
    
    return [x, y]
}
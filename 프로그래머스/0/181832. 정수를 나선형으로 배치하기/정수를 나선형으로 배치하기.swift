import Foundation

func solution(_ n:Int) -> [[Int]] {
    var result = Array(repeating: Array(repeating: 0, count: n), count: n)
    var (x, y) = (0, 0)
    var (xDirection, yDirection) = (1, 0)
    
    for i in 1...(n * n) {
        result[y][x] = i
        
        let nextX = x + xDirection
        let nextY = y + yDirection
        
        if nextX < 0 || nextX >= n || nextY < 0 || nextY >= n || result[nextY][nextX] != 0 {
            let temp = xDirection
            xDirection = -yDirection
            yDirection = temp
        }
        
        x += xDirection
        y += yDirection
    }
    
    return result
}
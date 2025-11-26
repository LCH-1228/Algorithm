import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var (minX, maxX) = (Int.max, Int.min)
    var (minY, maxY) = (Int.max, Int.min)
    
    for dot in dots {
        let (x, y) =  (dot[0], dot[1])
        if x < minX { minX = x }
        if x > maxX { maxX = x }
        if y < minY { minY = y }
        if y > maxY { maxY = y }
    }
    
    return (maxX - minX) * (maxY - minY)
}
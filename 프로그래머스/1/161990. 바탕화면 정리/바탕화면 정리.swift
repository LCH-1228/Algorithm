import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var result = [Int.max ,Int.max ,Int.min, Int.min]
    
    for i in 0..<wallpaper.count {
        for j in 0..<wallpaper[i].count {
            let index = wallpaper[i].index(wallpaper[i].startIndex, offsetBy: j)
            if wallpaper[i][index] == "#" {
                if result[0] > i {
                    result[0] = i
                }
                
                if result[1] > j {
                    result[1] = j
                }
                
                if result[2] < i + 1 {
                    result[2] = i + 1
                }
                
                if result[3] < j + 1 {
                    result[3] = j + 1
                }
            }
        }
    }
    
    return result
}
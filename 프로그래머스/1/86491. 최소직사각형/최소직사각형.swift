import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxWidth = 0
    var maxHeight = 0
    
    for i in 0..<sizes.count {
        let width = sizes[i][0] > sizes[i][1] ? sizes[i][0] : sizes[i][1]
        let height = sizes[i][0] < sizes[i][1] ? sizes[i][0] : sizes[i][1]
        
        if width > maxWidth {
            maxWidth = width
        }
        
        if height > maxHeight {
            maxHeight = height
        }
    }
    
    return maxWidth * maxHeight
}
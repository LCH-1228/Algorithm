import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var result = [Int]()
    
    for height in 3...(brown + yellow) {
        guard (brown + yellow) % height == 0 else {
            continue
        }
        
        let width = (brown + yellow) / height
        
        if (width - 2) * (height - 2) == yellow {
            result.append(contentsOf: [max(width, height), min(width, height)])
            break
        }
    }
    
    return result
}
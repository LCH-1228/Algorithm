import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var result = [Int]()
    
    for target in targets {
        var count = 0
        var isContain = true
        
        for char in target {
            let countList = keymap.compactMap { key -> Int? in
                guard let index = key.firstIndex(of: char) else {
                    return nil
                } 
                return key.distance(from: key.startIndex, to: index) + 1
            }
            
            if let minCount = countList.min() {
                count += minCount
            } else {
                isContain = false
                break
            }
        }
        
        result.append(isContain ? count : -1)
    }
    
    return result
}
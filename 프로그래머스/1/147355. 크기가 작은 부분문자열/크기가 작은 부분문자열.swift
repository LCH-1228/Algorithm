import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var count = 0
    let offset = p.count - 1
    let target = Int(p)!
    
    for i in 0..<t.count - offset {
        let start = t.index(t.startIndex, offsetBy: i)
        let end = t.index(start, offsetBy: offset)
        guard let num = Int(String(t[start...end])) else { continue }
        
        if num <= target {
            count += 1
        }
    }
    
    return count
}
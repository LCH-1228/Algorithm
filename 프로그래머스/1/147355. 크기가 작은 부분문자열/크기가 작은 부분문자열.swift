import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var count = 0
    let offset = p.count - 1
    let target = Int(p)!
    let chars = Array(t)
    
    for i in 0..<chars.count - offset {
        var num = 0
        for j in 0...offset {
            num = num * 10 + Int(String(chars[i + j]))!
        }
        
        if num <= target {
            count += 1
        }
    }
    
    return count
}
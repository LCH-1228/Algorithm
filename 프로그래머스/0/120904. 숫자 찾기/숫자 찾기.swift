import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let target = Character(String(k))
    
    for (i, char) in String(num).enumerated() {
        if char == target {
            return i + 1
        }
    }
    return -1
}

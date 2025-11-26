import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    let target = Set(spell)
    
    for word in dic {
        let wordSet = Set(word.map { String($0) })
        if wordSet == target {
            return 1
        }
    }
    
    return 2
}
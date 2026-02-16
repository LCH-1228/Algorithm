import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var wordSet = Set<String>()
    var endAlphabet: Character?
    
    for i in 0..<words.count {
        let startAlphabet = words[i].first
        
        if !wordSet.insert(words[i]).inserted || (endAlphabet !=  nil && endAlphabet != startAlphabet) {
            let person = (i % n) + 1
            let count = (i / n) + 1
            return [person, count]
        }
        
        endAlphabet = words[i].last
    }
    
    return [0, 0]
}
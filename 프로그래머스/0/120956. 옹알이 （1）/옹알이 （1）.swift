import Foundation

func solution(_ babbling: [String]) -> Int {
    let sounds = ["aya", "ye", "woo", "ma"]
    var count = 0
    
    // Greedy Algorithm 
    for word in babbling {
        var tempWord = word
        var remaining = sounds
        
        loop: while !tempWord.isEmpty {
            for (index, sound) in remaining.enumerated() {
                if tempWord.hasPrefix(sound) {
                    tempWord.removeFirst(sound.count)
                    remaining.remove(at: index)
                    continue loop
                }
            }
            break
        }
        
        if tempWord.isEmpty {
            count += 1
        }
    }
    
    return count
}
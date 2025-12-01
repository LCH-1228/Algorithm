import Foundation

func solution(_ babbling: [String]) -> Int {
    let sounds = ["aya", "ye", "woo", "ma"]
    var count = 0
    
    // Greedy Algorithm
    for word in babbling {
        var tempWord = word
        var usedSound = ""
        
        loop: while !tempWord.isEmpty {
            for sound in sounds where sound != usedSound {
                if tempWord.hasPrefix(sound) {
                    tempWord.removeFirst(sound.count)
                    usedSound = sound
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
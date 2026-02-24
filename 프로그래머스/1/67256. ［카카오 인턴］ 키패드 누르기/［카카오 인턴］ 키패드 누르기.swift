import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""
    var previousL = 10 
    var previousR = 12
    
    for i in 0..<numbers.count {
        let number = numbers[i] == 0 ? 11 : numbers[i]
        
        if [1, 4, 7].contains(number) {
            previousL = number
            result.append("L")
            continue
        }
        
        if [3, 6, 9].contains(number) {
            previousR = number
            result.append("R")
            continue
        }
        
        let currentL = [(previousL - 1) % 3, (previousL - 1) / 3]
        let currentR = [(previousR - 1) % 3, (previousR - 1) / 3]
        
        let target = [(number - 1) % 3, (number - 1) / 3]
        
        let deltaL = [abs(currentL[0] - target[0]), abs(currentL[1] - target[1])]
        let deltaR = [abs(currentR[0] - target[0]), abs(currentR[1] - target[1])]
        
        let distanceL = deltaL[0] + deltaL[1]
        let distanceR = deltaR[0] + deltaR[1]
        
        if distanceL == distanceR {
            previousL = hand == "left" ? number : previousL
            previousR = hand == "right" ? number : previousR
            result.append(hand == "left" ? "L" : "R")
        } else if distanceL < distanceR {
            previousL = number
            result.append("L")
        } else {
            previousR = number
            result.append("R")
        }
    }
    
    return result
}
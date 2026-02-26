import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var card1Index = 0
    var card2Index = 0
    
    for word in goal {   
        if card1Index < cards1.count, cards1[card1Index] == word {
            card1Index += 1
        } else if card2Index < cards2.count, cards2[card2Index] == word {
            card2Index += 1
        } else {
            return "No"
        }
    }
        
    return "Yes"
}
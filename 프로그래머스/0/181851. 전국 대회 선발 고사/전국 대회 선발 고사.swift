import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    let topThree = rank.enumerated()
        .filter{ attendance[$0.offset] }
        .sorted{ $0.element < $1.element }
        .prefix(3)
        .map{ $0.offset }
    
    return topThree[0] * 10000 + topThree[1] * 100 + topThree[2]
}
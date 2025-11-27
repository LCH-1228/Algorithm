import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    let averages = score.map { Double($0[0] + $0[1]) / 2.0 }    
    let rank = averages.sorted(by: >)
    .enumerated()
    .reduce(into: [Double: Int]()) { dict, item in
        if dict[item.element] == nil {
            dict[item.element] = item.offset + 1
        }
    }
    
    return averages.compactMap{ rank[$0] }
}
import Foundation

func solution(_ array:[Int]) -> Int {
    guard array.count != 1 else { return array[0] }
    
    let countDict = array.reduce(into: [Int: Int]()) { dict, item in
        dict[item, default: 0] += 1
    }
    
    let maxCount = countDict.values.max()!
    let candidates = countDict.filter { $0.value == maxCount }
        .map { $0.key }
    
    return candidates.count == 1 ? candidates[0] : -1
}
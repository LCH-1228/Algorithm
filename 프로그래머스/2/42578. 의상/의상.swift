import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var typeDict = [String : [String]]()
    
    for clothe in clothes {
        typeDict[clothe[1], default: []].append(clothe[0])
    }
    
    let count = typeDict.reduce(1) { num, dict in
        num * (dict.value.count + 1)
    }

    return count - 1
}
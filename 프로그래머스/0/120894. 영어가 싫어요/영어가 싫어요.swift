import Foundation

func solution(_ numbers:String) -> Int64 {
    let numberDict = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    .enumerated()
    .reduce(into: [String : String]()) { dict, pair in
        dict[pair.element] = String(pair.offset)
    }
    
    var result = ""
    var temp = ""
    
    for char in numbers {
        temp.append(char)
        
        if let digit = numberDict[temp] {
            result.append(digit)
            temp = ""
        }
    }
    
    return Int64(result) ?? 0
}
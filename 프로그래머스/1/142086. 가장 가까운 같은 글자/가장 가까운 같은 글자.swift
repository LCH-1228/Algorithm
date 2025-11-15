import Foundation

func solution(_ s:String) -> [Int] {
    guard s.count >= 1 && s.count <= 10000 else { return [] }
    var resultArray = [Int]()
    var dictionary : [Character : Int] = [:]
    
    for (index, char) in s.enumerated() {
        
        if let beforeIndex = dictionary[char] {
            resultArray.append(index - beforeIndex)
            dictionary[char] = index
        } else {
            resultArray.append(-1)
            dictionary[char] = index
        }
    }
    
    return resultArray
}
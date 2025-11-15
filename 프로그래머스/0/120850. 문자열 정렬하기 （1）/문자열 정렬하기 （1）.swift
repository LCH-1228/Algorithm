import Foundation

func solution(_ myString:String) -> [Int] {
    guard myString.count >= 1 && myString.count <= 100 else { return [] }
    
    let numberArray: [Int] = myString.compactMap{ Int(String($0)) }
    return numberArray.sorted()
}
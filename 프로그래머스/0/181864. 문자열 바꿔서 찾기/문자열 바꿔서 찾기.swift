import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    let tempString = myString.map({ $0 == "A" ? "B" : "A"}).joined()
    return tempString.contains(pat) ? 1 : 0
}
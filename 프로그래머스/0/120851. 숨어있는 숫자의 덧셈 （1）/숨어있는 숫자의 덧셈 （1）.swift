import Foundation

func solution(_ myString:String) -> Int {
    guard myString.count >= 1 && myString.count <= 1000 else { return 0 }
    let intArray = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var tempArray: [Int] = []
    for character in myString {
        if intArray.contains(String(character)) {
            tempArray.append(Int(String((character)))!)
        }
    }
    if tempArray.isEmpty {
        return 0
    }
    return tempArray.reduce(0) { $0 + $1 }
}
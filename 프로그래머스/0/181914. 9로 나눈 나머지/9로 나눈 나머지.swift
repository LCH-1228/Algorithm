import Foundation

func solution(_ number:String) -> Int {
    let numberArray = number.compactMap { Int(String($0)) }
    return numberArray.reduce(0, +) % 9
}
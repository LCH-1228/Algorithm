import Foundation

func solution(_ numStr:String) -> Int {
    let numArray = numStr.compactMap { Int(String($0)) }
    return numArray.reduce(0, +)
}
import Foundation

func solution(_ myString:String, _ letter:String) -> String {
    guard myString.count >= 1 && myString.count <= 100 else { return "" }
    guard letter.count == 1 else { return "" }
    return myString.filter{ String($0) != letter }
}
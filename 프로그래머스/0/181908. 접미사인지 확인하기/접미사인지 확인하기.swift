import Foundation

func solution(_ myString:String, _ isSuffix:String) -> Int {
    return myString.hasSuffix(isSuffix) ? 1 : 0
}
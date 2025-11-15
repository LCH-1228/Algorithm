import Foundation

func solution(_ myString:String, _ isPrefix:String) -> Int {
    return myString.hasPrefix(isPrefix) ? 1 : 0
}
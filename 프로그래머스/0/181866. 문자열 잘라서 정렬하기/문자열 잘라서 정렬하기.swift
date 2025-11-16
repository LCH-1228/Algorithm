import Foundation

func solution(_ myString:String) -> [String] {
    return Array(myString.split(separator: "x").map(String.init)).sorted()
}
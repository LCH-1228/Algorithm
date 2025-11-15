import Foundation

func solution(_ rnyString:String) -> String {
    guard rnyString.count >= 1 && rnyString.count <= 100 else { return "" }
    return rnyString.replacingOccurrences(of: "m", with: "rn")
}
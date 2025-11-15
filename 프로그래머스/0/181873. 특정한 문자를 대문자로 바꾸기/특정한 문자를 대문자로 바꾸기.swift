import Foundation

func solution(_ myString:String, _ alp:String) -> String {
    return myString.replacingOccurrences(of: alp, with: alp.uppercased())
}
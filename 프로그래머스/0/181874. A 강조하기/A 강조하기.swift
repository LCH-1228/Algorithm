import Foundation

func solution(_ myString:String) -> String {
    return myString.map({
        ($0 == "a" || $0 == "A") ? "A" : String($0).lowercased()
    }).joined()
}
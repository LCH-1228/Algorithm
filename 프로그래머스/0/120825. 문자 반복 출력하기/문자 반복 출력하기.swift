import Foundation

func solution(_ myString: String, _ n: Int) -> String {
    guard (myString.count >= 2 && myString.count <= 5) && (n >= 2 && n <= 10) else { return "" }
    
    var result: String = ""
    for character in myString {
        for i in 1...n {
            result += String(character)
        }
    }
    return result
}
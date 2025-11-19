import Foundation

func solution(_ myString:String) -> [Int] {
    var alphabet = [String : Int]()
    (65...90).forEach { alphabet[String(UnicodeScalar($0))] = 0 }
    (97...122).forEach { alphabet[String(UnicodeScalar($0))] = 0 }
    for char in myString {
        alphabet[String(char), default: 0] += 1
    }
    return alphabet.sorted(by: <).map{ $0.value }
}
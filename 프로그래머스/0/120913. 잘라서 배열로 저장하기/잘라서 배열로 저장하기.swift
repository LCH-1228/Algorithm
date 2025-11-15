import Foundation

func solution(_ myStr:String, _ n:Int) -> [String] {
    guard myStr.count >= 1 && myStr.count <= 100 else { return [] }
    guard n >= 1 && n <= myStr.count else { return [] }
    var tempString = myStr
    var result = [String]()
    var index = 0
    while !tempString.isEmpty {
        result.append("")
        for _ in 1...n {
            guard !tempString.isEmpty else { break }
            let character = tempString.removeFirst()
            result[index] += String(character)
        }
        index += 1
    }
    return result
}
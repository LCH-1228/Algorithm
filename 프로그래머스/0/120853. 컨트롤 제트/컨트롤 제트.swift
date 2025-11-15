import Foundation

func solution(_ s:String) -> Int {
    let array = s.split(separator: " ")
    var resultArray = [String]()
    for string in array {
        if string != "Z" {
            resultArray.append(String(string))
        } else {
            resultArray.removeLast()
        }
    }
    let result = resultArray.reduce(0){Int(exactly: $0)! + Int($1)!}
    
    if result.words.isEmpty {
        return 0
    } else {
        return result
    }
}
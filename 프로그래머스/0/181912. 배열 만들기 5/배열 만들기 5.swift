import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    var result = [Int]()
    for intStr in intStrs {
        let startIndex = intStr.index(intStr.startIndex, offsetBy: s)
        let endIndex = intStr.index(startIndex, offsetBy: l)
        if let num = Int(intStr[startIndex..<endIndex]), num > k {
            result.append(num)
        }
    }
    return result   
}
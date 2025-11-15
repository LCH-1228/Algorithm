import Foundation

func solution(_ strArr:[String]) -> [String] {
    var result = [String]()
    result.reserveCapacity(strArr.count)
    for (i, str) in strArr.enumerated() {
        result.append(i & 1 == 1 ? str.uppercased() : str.lowercased())
    }
    return result
}
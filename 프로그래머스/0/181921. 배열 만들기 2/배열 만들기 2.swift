import Foundation

func solution(_ l: Int, _ r: Int) -> [Int] {
    let values = (1...64).compactMap{ digit -> Int? in
    let binary = String(digit, radix: 2)
    let convertedStr = binary.replacingOccurrences(of: "1", with: "5")
    return Int(convertedStr)
    }
    let filteredValues = values.filter{ $0 >= l && $0 <= r }
    return filteredValues.isEmpty ? [-1] : filteredValues
}
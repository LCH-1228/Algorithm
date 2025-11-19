import Foundation

func solution(_ strList:[String]) -> [String] {
    for (i, str) in strList.enumerated() {
        if str == "l" {
            return Array(strList.prefix(upTo: i))
        } else if str == "r" {
            return Array(strList.suffix(from: i + 1))
        }
    }
    return []
}
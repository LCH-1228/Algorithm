import Foundation

func solution(_ strArr:[String]) -> [String] {
    let target = "ad"
    return strArr.filter{ !$0.contains(target) }
}
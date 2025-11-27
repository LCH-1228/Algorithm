import Foundation

func solution(_ a:String, _ b:String) -> Int {
    guard a != b else { return 0 }
    let target = b + b
    if let range = target.range(of: a) {
        return target.distance(from: target.startIndex, to: range.lowerBound)
    }
    return -1
}
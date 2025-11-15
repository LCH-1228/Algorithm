import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    guard s1.count >= 1 && s1.count <= 100 else { return 0 }
    guard s2.count >= 1 && s2.count <= 100 else { return 0 }
    return Set(s1).intersection(Set(s2)).count
}
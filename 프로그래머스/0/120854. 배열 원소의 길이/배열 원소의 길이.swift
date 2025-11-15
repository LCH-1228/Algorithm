import Foundation

func solution(_ strList:[String]) -> [Int] {
    guard strList.count >= 1 && strList.count <= 100 else { return [] }
    return strList.map{ $0.count }
}
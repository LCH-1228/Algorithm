import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    guard str1.count >= 1 && str1.count <= 100 else { return 0 }
    guard str2.count >= 1 && str2.count <= 100 else { return 0 }
    guard str1.contains(str2) else { return 2 }
    return 1
}
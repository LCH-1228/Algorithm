import Foundation

func solution(_ message:String) -> Int {
    guard message.count >= 1 && message.count <= 50 else { return 0 }
    return message.count * 2
}
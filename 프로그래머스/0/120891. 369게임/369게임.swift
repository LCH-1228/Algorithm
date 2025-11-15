import Foundation

func solution(_ order:Int) -> Int{
    guard order >= 1 && order <= 1000000 else { return 0 }
    var result = 0
    for i in String(order) {
        if "369".contains(String(i)) {
            result += 1
        }
    }
    return result
}
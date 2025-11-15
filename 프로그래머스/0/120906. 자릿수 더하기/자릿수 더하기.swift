import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    var digit = 0
    var tempN = n
    guard n >= 0 && n <= 1000000 else { return 1 }
    for i in stride(from: 6, through: 0, by: -1) {
        digit += tempN / Int(pow(10.0, Double(i)))
        tempN -= digit * Int(pow(10.0, Double(i)))
        result += digit
        digit = 0
    }
    return result
}
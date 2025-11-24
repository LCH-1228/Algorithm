import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    guard let firtNumber = Int(bin1, radix: 2),
    let secondNumber = Int(bin2, radix: 2) else {
        return ""
    }
    return String(firtNumber + secondNumber, radix: 2)
}

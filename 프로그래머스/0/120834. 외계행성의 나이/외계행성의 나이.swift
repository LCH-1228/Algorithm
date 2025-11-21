import Foundation

func solution(_ age:Int) -> String {
    return String(age).compactMap {
        guard let digit = $0.wholeNumberValue else { return nil }
        let targetNum = digit + 97
        guard let scalar = UnicodeScalar(targetNum) else { return nil }
        return String(scalar)
    }
    .joined()
}

import Foundation

func solution(_ angle:Int) -> Int {
    guard angle >= 0 && angle <= 180 else { return 0 }
    switch angle {
    case 0..<90:
        return 1
    case 90:
        return 2
    case 91..<180:
        return 3
    case 180:
        return 4
    default:
        return 0
    }
}
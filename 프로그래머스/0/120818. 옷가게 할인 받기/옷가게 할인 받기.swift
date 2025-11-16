import Foundation

func solution(_ price:Int) -> Int {
    guard price >= 10 && price <= 1000000 else { return 0 }
    switch price {
    case 100000..<300000:
        return price * 95 / 100
    case 300000..<500000:
        return price * 9 / 10
    case 500000...:
        return price * 8 / 10
    default:
        return price
    }
}
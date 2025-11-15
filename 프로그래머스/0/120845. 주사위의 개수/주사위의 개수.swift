import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    guard box.count == 3 else { return 0 }
    guard box.filter({ $0 >= 1 && $0 <= 50}).count == box.count else { return 0 }
    guard n >= 1 && n <= 50 else { return 0 }
    guard box.filter({ $0 >= n}).count == box.count else { return 0 }
    return (box[0] / n) * (box[1] / n) * (box[2] / n)
}
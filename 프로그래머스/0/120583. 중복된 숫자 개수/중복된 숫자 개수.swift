import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    guard array.count >= 1 && array.count <= 100 else { return 0 }
    guard array.filter({ $0 >= 0 && $0 <= 1000}).count == array.count else { return 0 }
    guard n >= 0 && n <= 1000 else { return 0 }
    return array.filter({ $0 == n}).count
}
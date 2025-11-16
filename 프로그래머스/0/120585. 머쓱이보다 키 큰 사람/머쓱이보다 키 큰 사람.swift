import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    guard array.count >= 1 && array.count <= 100 else { return 0 }
    guard height >= 1 && height <= 200 else { return 0 }
    guard array.filter({ $0 >= 1 && $0 <= 200}).count == array.count else { return 0 }
    return array.filter({ $0 > height }).count
}
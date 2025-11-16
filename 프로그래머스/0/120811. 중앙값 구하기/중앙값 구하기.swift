import Foundation

func solution(_ array: [Int]) -> Int {
    guard array.count % 2 != 0 else { return 0 }
    guard array.count > 0 && array.count < 100 else { return 0 }
    if (array.contains(where: {$0 <= -1000})) || (array.contains(where: {$0 >= 1000})) {
        return 0
    } else {
        return array.sorted()[array.count / 2]
    }
}
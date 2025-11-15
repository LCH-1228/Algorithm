import Foundation

func solution(_ sides:[Int]) -> Int {
    guard sides.count == 3 else { return 0 }
    guard (sides.contains{$0 >= 1}) && (sides.contains{ $0 <= 1000 }) else { return 0 }
    let sortedSides = sides.sorted()
    if sortedSides[2] < sortedSides[0] + sortedSides[1] {
        return 1
    } else {
        return 2
    }
}
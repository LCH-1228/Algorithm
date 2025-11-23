import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    let rank = emergency.sorted(by: >)
    .enumerated()
    .reduce(into: [Int: Int]()) { dict, item in
        dict[item.element] = item.offset + 1
    }
  
  return emergency.compactMap { rank[$0] }
}

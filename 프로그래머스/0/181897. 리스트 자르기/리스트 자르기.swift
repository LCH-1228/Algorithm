import Foundation

func solution(_ n:Int, _ slicer:[Int], _ numList:[Int]) -> [Int] {
    let (a, b, c) = (slicer[0], slicer[1], slicer[2])
    switch n {
    case 1:
        return Array(numList[0...b])
    case 2:
        return Array(numList[a..<numList.count])
    case 3:
        return Array(numList[a...b])
    case 4:
      return stride(from: a, through: b, by: c).map { numList[$0] }
    default:
      return []
    }
}

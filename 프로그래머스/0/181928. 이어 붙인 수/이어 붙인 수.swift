import Foundation

func solution(_ numList:[Int]) -> Int {
    var oddNumList = numList.filter{ $0 % 2 == 1}
    var evenNumList = numList.filter{ $0 % 2 == 0}
    guard let oddNum = Int(oddNumList.map(String.init).joined()) else { return 0}
    guard let evenNum = Int(evenNumList.map(String.init).joined()) else { return 0}
    return oddNum + evenNum
}
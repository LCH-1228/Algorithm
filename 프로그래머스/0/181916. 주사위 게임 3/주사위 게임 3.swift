import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    let array = [a, b, c, d]
    var counterDic = [Int : Int]()
    array.forEach { counterDic[$0, default: 0] += 1}
    
    let numList = Array(counterDic.keys)
    
    switch numList.count {
    case 1:
        let p = numList[0]
        return 1111 * p
    case 2:
        let (a, aCount) = (numList[0], counterDic[numList[0]] ?? 0)
        let (b, bCount) = (numList[1], counterDic[numList[1]] ?? 0)
        
        if aCount == bCount {
            return (a + b) * abs(a - b)
        }
        
        let p = aCount > bCount ? a : b
        let q = aCount > bCount ? b : a
        
        return (10 * p + q) * (10 * p + q)
    case 3:
        let qr = counterDic.filter({ $0.value != 2 })
        return qr.reduce(1) { $0 * $1.key }
    default:
        return numList.min() ?? 0
    }
}
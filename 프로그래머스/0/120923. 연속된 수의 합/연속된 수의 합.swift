import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    /*
    a + (a+1) + ... + a(num -1) = total
    a * num + (0 + 1 + ... + (num - 1) = total
    a * num + ((num - 1) * num / 2) = total
    a = (total - ((num - 1) * num / 2)) / num
    a = (total / num) - ((num - 1) * num / 2) / num
    a = (total / num) - ((num - 1) * num) / (2 * num)
    a = (total / num) - (num - 1) / 2
    */
    
    let average = Double(total) / Double(num)
    let start = Int(average - Double(num - 1) / 2)
    return Array(start..<start + num)
}
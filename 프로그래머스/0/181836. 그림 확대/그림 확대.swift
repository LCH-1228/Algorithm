import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    return picture.map { (row: String) -> [String] in
        let extended = row.map{ String.init(repeating: $0, count: k) }.joined()
        return Array(repeating: extended, count: k)
    }.flatMap{ $0 }
}
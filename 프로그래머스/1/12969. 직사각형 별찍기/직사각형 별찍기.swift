import Foundation

let input = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (n, m) = (input[0], input[1])
let str = String(repeating: String(repeating: "*", count: n) + "\n", count: m)
print(str)
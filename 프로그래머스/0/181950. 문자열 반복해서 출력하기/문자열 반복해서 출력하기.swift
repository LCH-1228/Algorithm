import Foundation

let inp = readLine()!.components(separatedBy: [" "]).map { $0 }
var (s1, a) = (inp[0], Int(inp[1])!)
repeat {
    print(s1, terminator: "")
    a -= 1
} while a != 0
import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }

var character = "*"
for _ in 1...n[0] {
    print(character)
    character += "*"
}
import Foundation

let s1 = readLine()!
var value = ""
for character in s1 {
    let str = String(character)
    if str == str.lowercased() {
        value += str.uppercased()
    } else {
        value += str.lowercased()
    }
}
print(value)
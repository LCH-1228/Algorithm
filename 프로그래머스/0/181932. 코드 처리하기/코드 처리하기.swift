import Foundation

func solution(_ codes:String) -> String {
    var result = ""
    var mode = false
    for (index, code) in codes.enumerated() {
        if (code == "0" || code == "1") {
            mode.toggle()
        } else if index & 1 == 0, mode == false {
          result += String(code)
        } else if index & 1 == 1, mode == true {
          result += String(code)
        }
    }
    return result.count != 0 ? result : "EMPTY"
}

import Foundation

func solution(_ rsp:String) -> String {
    guard rsp.count > 0 && rsp.count <= 100 else { return "" }
    var result = ""
    for character in rsp {
        switch character {
        case "2":
            result += "0"
        case "0":
            result += "5"
        case "5":
            result += "2"
        default:
            result += ""
        }
    }
    return result
}
import Foundation

func solution(_ numLog:[Int]) -> String {
    var result = ""
    for index in 1..<numLog.count {
        let log = numLog[index] - numLog[index - 1]
        switch log {
        case 1:
            result += "w"
        case 10:
            result += "d"
        case -1:
            result += "s"
        case -10:
            result += "a"
        default: break
        }
  }
  return result
}
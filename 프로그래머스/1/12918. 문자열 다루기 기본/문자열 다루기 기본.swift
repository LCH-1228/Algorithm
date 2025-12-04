func solution(_ s:String) -> Bool {
    let length = s.count
    guard length == 4 || length == 6 else { return false }
    return s.allSatisfy { $0 >= "0" && $0 <= "9" }
}
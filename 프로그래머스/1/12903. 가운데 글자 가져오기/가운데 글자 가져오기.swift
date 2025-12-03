func solution(_ s:String) -> String {
    let count = s.count
    let center = count / 2
    
    let start = s.index(s.startIndex, offsetBy: count % 2 == 0 ? center - 1 : center)
    let end   = s.index(s.startIndex, offsetBy: center)
    
    return String(s[start...end])
}
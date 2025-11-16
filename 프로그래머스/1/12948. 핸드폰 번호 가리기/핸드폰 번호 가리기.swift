func solution(_ phoneNumber:String) -> String {
    guard phoneNumber.count >= 4 && phoneNumber.count <= 20 else { return "" }
    let numberCount = phoneNumber.count
    let lastNumbers = phoneNumber.suffix(4)
    var result = ""
    guard numberCount != 4 else { return String(lastNumbers) }
    
    for _ in 1...numberCount - 4 {
        result += "*"
    }
    
    return result + lastNumbers
}
func solution(_ phoneNumber:String) -> String {
    var masking = ""
    
    for _ in 0..<phoneNumber.count - 4 {
        masking += "*"
    }
    
    let lastNumbers = phoneNumber.suffix(4)
    
    return masking + lastNumbers
}
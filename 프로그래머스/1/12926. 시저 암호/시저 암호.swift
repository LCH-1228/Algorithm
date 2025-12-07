func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    
    for char in s {
        if char == " " {
            result.append(" ")
            continue
        }
        
        guard let asciiValue = char.asciiValue else { continue }
        let shiftedValue: Int
        
        if asciiValue >= 65 && asciiValue <= 90 {
            shiftedValue = (Int(asciiValue) - 65 + n) % 26 + 65
        } else if asciiValue >= 97 && asciiValue <= 122 {
            shiftedValue = (Int(asciiValue) - 97 + n) % 26 + 97
        } else {
            continue
        }
        
        if let scalar = UnicodeScalar(shiftedValue) {
            result.append(Character(scalar))
        }
    }
    
    return result
}
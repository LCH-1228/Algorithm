func solution(_ s:String) -> String {
    var index = 0
    var result = [String]()
    
    for char in s {
        if char == " " {
            result.append(" ")
            index = 0
            continue
        }
        
        if index % 2 == 0 {
            result.append(char.uppercased())
        } else {
            result.append(char.lowercased())
        }
        index += 1
    }
    
    return result.joined()
}
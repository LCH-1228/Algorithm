func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var result = [String]()
    
    for i in 0..<arr1.count {
        var temp = ""
        
        for bitString in String(arr1[i] | arr2[i], radix: 2) {
            if bitString == "1" {
                temp += "#"
            } else {
                temp += " "
            }
        }
        
        if temp.count != arr1.count {
            let padding = String(repeating: " ", count: arr1.count - temp.count)
            temp = padding + temp
        }
        
        result.append(temp)
    }
    
    return result
}
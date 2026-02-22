import Foundation

func solution(_ newId:String) -> String {
    var result = newId
    
    while true {
        var temp = ""
        
        var previousChar: Character = " "

        for char in result {
            if char.isLetter || char.isNumber {
                temp.append(char.lowercased())
                previousChar = char
                continue
            }
            
            if previousChar == "." && char == "." {
                continue
            }

            if ["-", "_", "."].contains(char) {
                temp.append(char)
                previousChar = char
                continue
            }
        }
        
        if temp.first == "." {
            temp.removeFirst()
        }
        
        if temp.last == "." {
            temp.removeLast()
        }
        
        if temp.isEmpty {
            temp.append("a")
        }
        
        if temp.count >= 16 {
            temp = String(temp.prefix(15))
        }
        
        if temp.last == "." {
            temp.removeLast()
        }
        
        if temp.count <= 2 {
            temp.append(temp.last!)
            result = temp
            continue
        } else {
            result = temp
            break
        }
    }
    
    return result
}
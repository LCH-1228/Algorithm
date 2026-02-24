import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let allList = Array(97...122)
    var result = ""
    
    let skipScalars = skip.map { Int($0.unicodeScalars.first!.value) }
    let filteredList = allList.filter { !skipScalars.contains($0) }
    
    for char in s {
        let charScalar = Int(char.unicodeScalars.first!.value)
        
        if let currentIndex = filteredList.firstIndex(of: charScalar) {
            let targetIndex = (currentIndex + index) % filteredList.count
            let targetScalar = filteredList[targetIndex]
            
            if let scalar = UnicodeScalar(targetScalar) {
                result.append(Character(scalar))
            }
        }
    }
    
    return result
}
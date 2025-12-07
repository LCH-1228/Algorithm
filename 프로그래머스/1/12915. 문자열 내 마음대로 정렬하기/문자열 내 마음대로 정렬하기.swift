func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted {
        let firstIndex = $0.index($0.startIndex, offsetBy: n)
        let secondIndex = $1.index($1.startIndex, offsetBy: n)
        
        let firstChar = $0[firstIndex]
        let secondChar = $1[secondIndex]
        
        if firstChar != secondChar {
            return firstChar < secondChar
        }
        
        return $0 < $1
    }
}
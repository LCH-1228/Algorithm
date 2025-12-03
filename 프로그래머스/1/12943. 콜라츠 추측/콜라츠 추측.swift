func solution(_ num:Int) -> Int {
    guard num != 1 else { return 0 }
    var value = num
    
    for step in 1...500 {
        value = (value % 2 == 0) ? value / 2 : value * 3 + 1
        
        if value == 1 { return step }
    }
    
    return -1
}
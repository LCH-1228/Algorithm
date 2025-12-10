func solution(_ a:Int, _ b:Int) -> String {
    let weekday = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    let days = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var totalDays = b
    
    if a > 1 {
        for month in 0..<(a - 1) {
            totalDays += days[month]
        }
    }
    
    let index = (totalDays - 1) % 7
    return weekday[index]
}
import Foundation

func solution(_ dot:[Int]) -> Int {
    guard dot.count == 2 else { return 0 }
    guard (dot[0] >= -500 && dot[0] <= 500) || (dot[1] >= -500 && dot[1] <= 500) else { return 0 }
    guard dot[0] != 0 || dot[1] != 0 else { return 0 }
    
    if dot[0] > 0 && dot[1] > 0 { return 1 }
    else if dot[0] < 0 && dot[1] > 0 { return 2 }
    else if dot[0] < 0 && dot[1] < 0 { return 3 }
    else { return 4 }
}
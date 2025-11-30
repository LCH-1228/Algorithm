import Foundation

func solution(_ dots:[[Int]]) -> Int {
    /*
    한번 사용한 점은 다시 다른 점과 사용 불가
    선분 비교 경우의 수
    0-1, 2-3
    0-2, 1-3
    0-3, 1-2
    */
    
    for i in 1...3 {
        let otherLines = [1, 2, 3].filter { $0 != i }
        
        let deltaX1 = dots[0][0] - dots[i][0]
        let deltaY1 = dots[0][1] - dots[i][1]
        let deltaX2 = dots[otherLines[0]][0] - dots[otherLines[1]][0]
        let deltaY2 = dots[otherLines[0]][1] - dots[otherLines[1]][1]
        
        if deltaY1 * deltaX2 == deltaY2 * deltaX1 {
            return 1
        }
    }
    
    return 0
}
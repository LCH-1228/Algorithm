import Foundation

func solution(_ chicken:Int) -> Int {
    if chicken < 10 {
        return 0
    }
    
    let service = chicken / 10
    let remain = chicken % 10
    let additional = service + remain
    
    return service + solution(additional)
}
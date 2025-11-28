import Foundation

func solution(_ common:[Int]) -> Int {
    let a = common[0]
    let b = common[1]
    let c = common[2]
    
    let difference1 = b - a
    let difference2 = c - b
    
    if difference1 == difference2 {
        return common.last! + difference1
    }
    
    let ratio = b / a
    return common.last! * ratio
}
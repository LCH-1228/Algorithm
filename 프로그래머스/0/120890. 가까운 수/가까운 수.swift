import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    guard array.count >= 1 && array.count <= 100 else { return 0 }
    guard (array.contains{ $0 >= 1 }) && (array.contains{ $0 <= 100}) else { return 0 }
    guard n >= 1 && n <= 100 else { return 0 }
    
    let positiveTempValue = array.map{ $0 - n }.filter{ $0 >= 0 }.min()
    let negativeTempValue = array.map{ $0 - n }.filter{ $0 <= 0 }.max()
    
    guard positiveTempValue != nil else { return negativeTempValue! + n }
    guard negativeTempValue != nil else { return positiveTempValue! + n }
    
    if positiveTempValue! < abs(negativeTempValue!) {
        return positiveTempValue! + n
    } else {
        return negativeTempValue! + n
    }
}
import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    guard 1 <= i && i <= j && j <= 100000 else { return 0 }
    guard 0 <= k && k <= 9 else { return 0 }
    let arrange = (i...j).map{ $0 }
    let temp = arrange.filter({String($0).contains(String(k))}).flatMap({ String($0).map{$0} })
    return temp.filter({ String($0) == String(k) }).count
}
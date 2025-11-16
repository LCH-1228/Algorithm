import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    guard array.count >= 1 && array.count <= 100 else { return [] }
    guard array.filter({$0 >= 1 && $0 <= 100}).count == array.count else { return [] }
    guard commands.count >= 1 && commands.count <= 50 else { return [] }
    guard commands.filter({ $0.count == 3 }).count == commands.count else { return [] }
    var result = [Int]()
    var tempArray = [Int]()
    for command in commands {
        let i = command[0]
        let j = command[1]
        let k = command[2]
        
        result.append(array[i - 1...j - 1].sorted()[k - 1])
    }
    return result
}
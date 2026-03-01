import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    return commands.map { command in
        let startIndex = command[0] - 1
        let endIndex = command[1] - 1
        let targetIndex = command[2] - 1
        
        return array[startIndex...endIndex].sorted()[targetIndex]
    }
}
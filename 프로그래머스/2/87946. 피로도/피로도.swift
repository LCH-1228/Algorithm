import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    
    var countList = [Int]()
    
    for _ in 1...10_0000 {
        let random = dungeons.shuffled()
        var fatigue = k
        var count = 0
        
        for dungeon in random {
            if fatigue >= dungeon[0] {
                fatigue -= dungeon[1]
                count += 1
            } else {
                break
            }
        }
        countList.append(count)
    }
    
    return countList.max() ?? 0
}
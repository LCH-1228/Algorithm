import Foundation

func solution(_ hp:Int) -> Int {
    guard hp >= 0  && hp <= 1000 else { return 0 }
    var remaindHp = hp
    var warlordAnt = 0
    var soldierAnt = 0
    var workerAnt = 0
    warlordAnt = remaindHp / 5
    remaindHp = remaindHp % 5
    soldierAnt = remaindHp / 3
    remaindHp = remaindHp % 3
    workerAnt = remaindHp
    return warlordAnt + soldierAnt + workerAnt
}
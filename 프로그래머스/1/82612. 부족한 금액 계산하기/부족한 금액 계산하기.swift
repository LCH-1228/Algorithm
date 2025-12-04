import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    // 등차 수열 사용
    let totalCost = (count + 1) * count / 2 * price
    return money > totalCost ? Int64(0) : Int64(totalCost - money)
}
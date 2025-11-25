import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    /*
    C(n,r) = n! / (r! (n-r)!)
        = n(n-1)...(n-r+1) / r(r-1)...1
    
    C(n, n-r) = n! / ((n-r)! * (n - (n-r))!)
        = n(n−1)...(n−(n−r)+1) / (n−r)(n−r−1)...1
        = n(n-1)...(r+1) / (n-r)(n-r-1)...1
        = n(n-1)...(n-r+1) / r(r-1)...1
    
    balls: 5, share: 3
    C(5,3) = (12345) / (12)(123) = (45) / (12)
        = balls(balls-1)...(balls-share+1) / share(share - 1)...1
    C(5,2) = C(5, 5-3)
        = C(5,3)와 동일하게 전개됨
        = (12345) / (12)(123)
    */
    
    // C(n,r) = C(n, n-r)로 작은 값을 선택하면 계산량을 줄일 수 있음
    let r = min(share, balls - share)
    guard r != 0 else { return 1 }
    
    var result = 1
    
    // 전체 계산시 overflow 발생
    // 약분으로 계산 간소화 반복문 처리
    // 오버플로우 방지를 위해서 결과값은 누적되기전에 바로 업데이트
    for i in 1...r {
        result *= balls - i + 1
        result /= i
    }
    
    return result
}
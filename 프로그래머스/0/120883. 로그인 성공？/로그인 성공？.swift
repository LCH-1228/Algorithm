import Foundation

func solution(_ idPw:[String], _ db:[[String]]) -> String {
    for info in db {
        if info[0] == idPw[0] {
            return info[1] == idPw[1] ? "login" : "wrong pw"
        }
    }
    return "fail"
}
import Foundation

func solution(_ todoList:[String], _ finished:[Bool]) -> [String] {
    var result = [String]()
    for (todo, done) in zip(todoList, finished) where !done { //zip 동시 순회
        result.append(todo)
    }
    return result
}
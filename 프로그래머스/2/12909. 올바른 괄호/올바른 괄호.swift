import Foundation

func solution(_ s:String) -> Bool {
    guard s.first != ")" else { return false }
    guard s.count <= 100000 else { return false }
    let stack = Stack<Any>()
    
    for character in s {
        if character == "(" {
            stack.push(character)
        } else {
            guard !stack.isEmpty else { return false }
            stack.pop()
        }
    }
    if stack.isEmpty {
        return true
    } else {
        return false
    }
}

//Stack 구현
class Stack<T> {
    
    private var shared = [T]()
    
    var isEmpty: Bool {
        return shared.count == 0 ? true : false
    }
    
    func push(_ data: T) {
        shared.append(data)
    }
    
    func pop() {
        shared.popLast()
    }
}
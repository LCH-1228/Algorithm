import Foundation

if let userInput = readLine() {
    if userInput.count >= 1 && userInput.count <= 1000000 {
        print(userInput)
    }
}
import UIKit

class UserManager {
    var currentUserName: String = "Emmanuel Goldstein" {
        // willSet: 값을 쓰기 전
        willSet {
            print("Goodbye to \(currentUserName)")
            print("I hear \(newValue) is on their way!")
        }
        // didSet: 값을 쓴 후
        didSet {
            print("Welcome to \(currentUserName)")
            print("I miss \(oldValue) already!")
        }
    }
}


// currentUserName 가져오기

let manager = UserManager()

print(manager.currentUserName)

manager.currentUserName = "Dade Murphy"

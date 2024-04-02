import UIKit

var greeting = "Hello, playground"

class UserManagerWithObservedProperties {
    var currentUserName: String = "Emmanuel Goldstein" {
        willSet (newUserName) {
            print("Goodbye to \(currentUserName)")
            print("i heard \(newUserName) is on their way!")
            
        }
        didSet (oldUserName) {
            print("Welcome to \(currentUserName)")
            print("I Miss \(oldUserName) already!")
        }
    }
}

let manager = UserManagerWithObservedProperties()
print(manager.currentUserName)

manager.currentUserName = "Dade Murphy"
print(manager.currentUserName)


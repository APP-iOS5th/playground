class UserManager {
    var currentUserName: String = "Emmmanuel Goldstein" {
        willSet (newUserName) {
            print("Goodbye to \(currentUserName)")
            print("I hear \(newUserName) is on their way!")
        }
        didSet (oldUserName) {
            print("Welcome to \(currentUserName)")
            print("I miss \(oldUserName) already!")
        }
    }
}

let manager = UserManager()

print(manager.currentUserName)
manager.currentUserName = "Dade Murphy"

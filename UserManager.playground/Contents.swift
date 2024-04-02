
class UserManager {
    var currentUserName: String = "Emmanuel Goldstein" {
        willSet {
            print("Goodbye to \(currentUserName)")
            print("I hear \(newValue) is on their way!")
        }
        didSet {
            print("Welcome ti \(currentUserName)")
            print("I miss \(oldValue) already!")
        }
    }
}

let manager = UserManager()

print(manager.currentUserName)

manager.currentUserName = "Dade Murphy"

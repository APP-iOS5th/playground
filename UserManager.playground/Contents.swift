class UserManager {
    var currentUserName: String = "Emmanuel Goldstein" {
//        willSet (newUserName) {
//            print("Good bye to \(currentUserName)")
//            print("I hear \(newUserName) in on their way!")
//        }
//        didSet (oldUserName) {
//            print("Welcome to \(currentUserName)")
//            print("I miss \(oldUserName) already!")
//        }
        willSet {
            print("Good bye to \(currentUserName)")
            print("I hear \(newValue) in on their way!")
        }
        didSet {
            print("Welcome to \(currentUserName)")
            print("I miss \(oldValue) already!")
        }
    }
}

let manager = UserManager()

print(manager.currentUserName)

manager.currentUserName = "Dade Murphy"

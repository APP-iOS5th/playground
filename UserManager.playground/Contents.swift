class UserManager {
    //관찰자(옵저버) Property Observer
    var currentUserName: String = "Emmmanuel Goldstein" {
        willSet {
            print("Goodbye to \(currentUserName)")
            print("I hear \(newValue) is on their way!")
        }
        didSet{
            print("Welcome to \(currentUserName)")
            print("I miss \(oldValue) already!")
        }
    }
}

let manager = UserManager()

print(manager.currentUserName)

manager.currentUserName = "Dade Murphy"



class UserManager {
    var currentUserName: String = "Emmanuel Goldstein"{
        willSet(newUserName) {
            print("Goodbye to \(currentUserName)")
            print("I hear \(newUserName) is on their way!")
            
        }
        didSet (oldUserName){
            print("welcome to \(currentUserName)")
            print("I miss \(oldUserName) aiready!")
        }
    }
}

let manager = UserManager()

print(manager.currentUserName)

manager.currentUserName = "Dade Murphy"
ß

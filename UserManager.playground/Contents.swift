

class UserManager {
    var currentUserName: String = "Emmanuel Goldstein" {
           willSet {
               print("Goodbye to \(currentUserName)")
               print("I hear \(newValue) is on their way!")
           }
           didSet  {
               print("Welcome to \(currentUserName)")
               print("I miss \(oldValue) already!")
           }
   }
}

let manager = UserManager()
manager.currentUserName = "Dade Murphy"

manager.currentUserName = "Kate Libby"

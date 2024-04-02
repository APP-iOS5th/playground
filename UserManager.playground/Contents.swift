
class UserManager{
    var currentUserName: String = "yehjin jang" {
        willSet(newUserName){
            print("Goodbye to \(currentUserName)")
            print("I hear \(newUserName) is on their way!")
            
        }
        didSet(oldUserName){
            print("Welcome to \(currentUserName)")
            print("I miss \(oldUserName) already!")
        }
    }
}
let manager = UserManager()
print(manager.currentUserName)

manager.currentUserName = "yehrim jang"




class UserManager {
    var currentUserName: String = "Emmanual Goldstein" {
        // 속성이 설정되기 전
        willSet (newUserName) {
            print("Goodbye to \(currentUserName)")
            print("I hear \(newUserName) is on their way!")
        }
        // 속성이 설정된 후
        didSet (oldUserName) {
            print("Welocome to \(currentUserName)")
            print("I miss \(oldUserName) aready!")
        }
    }
}

let manager = UserManager()
print(manager.currentUserName)

manager.currentUserName = "Dade Murphy"
 

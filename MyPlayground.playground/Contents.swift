// Property Observer(프로퍼티 감시자)

class UserManager {
    var currentUserName: String = "Emmanuel Goldstein" {
        willSet (newUserName) {                     // 값이 변경되기 직전
            print("Goodbye to \(currentUserName)")
            print("I hear \(newUserName) is on their way!")
        } didSet (oldUserName) {                    // 값이 변경되기 직후
            print("Welcome to \(currentUserName)")
            print("I miss \(oldUserName) already!")
        }
    }
}

let manager = UserManager()

print(manager.currentUserName)
manager.currentUserName = "Dade Murphy"

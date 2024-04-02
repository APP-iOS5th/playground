
class UserManager {
    var currentUserName: String = "Emmanuel Goldstein" { // 변수인데, willSet,didSet이라는 클로저를 붙여주고 지켜본다. (변화가 있을 때 까지?)
        willSet (newUserName) { // 프로퍼티 옵져버
            print("Goodbye to \(currentUserName)")
            print("I hear \(newUserName) is on their way!")
        }
        didSet (oldUserName) { // 프로퍼티 옵져버
            print("Welcome to \(currentUserName)")
            print("I miss \(oldUserName) already!")
        }
    }
}

let manager = UserManager()
print(manager.currentUserName)

manager.currentUserName = "Dade Murphy"

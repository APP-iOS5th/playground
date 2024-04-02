

class UserManager {
    var currentUserName: String = "Emmanuel Goldstein" {
        willSet (newUesrName) { // 값이 변경되기 직전
            print("Goodbye to \(currentUserName)")
            print("I hear \(newUesrName) is on their way!")
        }
        didSet (oldUserName) { // 값이 변경된 직후
            print("Welcome to \(currentUserName)")
            print("I miss \(oldUserName) already..")
        }
    }
}

let manager = UserManager()

print(manager.currentUserName)

manager.currentUserName = "Seongbin Jo"

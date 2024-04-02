
class UserManager {
    var currentUserName: String = "Emmanuel Goldstein" {
        // set 은 값을 쓸 때
        willSet (newUserName) { // 값을 쓰기 전, 클로저임, 값 바뀌기 직전에 호출 ✨
            print("Goodbye to \(currentUserName)")
            print("I hear \(newUserName) is on their way!")
        }
        didSet (oldUserName) { // 값을 쓴 후, 클로저임, 값 바뀐 후에 호출 ✨
            print("Welcome to \(currentUserName)")
            print("I miss \(oldUserName)")
        }
    }
}

let manager = UserManager() // 생성

// print(manager.currentUserName)

manager.currentUserName = "Dade Murphy"

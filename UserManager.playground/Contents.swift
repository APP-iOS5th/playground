class UserManager {
    var currentUserName: String = "Emmanuel Goldstein" {
        // 값 변경 전
//        willSet (newUserName) {
//            print("Goodbye to \(currentUserName)")
//            print("I hear \(newUserName) is on their way!")
//        }
        // 값 변경 후
//        didSet (oldUserName) {
//            print("Welcome to \(currentUserName)")
//            print("I miss \(oldUserName)")
//        }
        
        // implicit name
        willSet {
            print("Goodbye to \(currentUserName)")
            print("I hear \(newValue) is on their way!")
        }

        didSet {
            print("Welcome to \(currentUserName)")
            print("I miss \(oldValue)")
        }
    }
}

let manager = UserManager()

print(manager.currentUserName)

manager.currentUserName = "Dade Murphy"

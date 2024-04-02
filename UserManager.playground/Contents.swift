import UIKit

class UserManager {
    var currentUserName: String = "Emmanuel Goldstein" {
        // MARK: - newUserName -> newValue => newUserName으로 따로 설정하지 않아도 newValue로 사용가능
        willSet(newUserName) {
            print("willSet: currentUserName >> \(currentUserName)")
            print("willSet: newUserName >> \(newUserName)")
        }
        
        // MARK: - oldUserName -> oldValue => newUserName으로 따로 설정하지 않아도 newValue로 사용가능
        didSet(oldUserName) {
            print("didSet: currentUserName >> \(currentUserName)")
            print("didSet: oldUserName >> \(oldUserName)")
        }
    }
}

let user = UserManager()
user.currentUserName = "Dade Murphy"


//프로퍼티 옵저버: willSet,didSet
class UserManger{
    var currentUserName: String = "Emmanuel Goldstein"{
        willSet(newUserName){ //willSet:값을 쓰기전
            print("Goobye to \(currentUserName)")
            print("I hear \(newUserName) is on their way!")
        }
        didSet(oldUserName){ //didSet: 값을 쓴 후
            print("Welcome to \(currentUserName)")
            print("I miss \(oldUserName) already!")
        }
    }
}

let manger = UserManger()

print(manger.currentUserName)

manger.currentUserName = "Dade Murphy"


//프로퍼티 옵저버: willSet,didSet
class UserManger{
    var currentUserName: String = "Emmanuel Goldstein"{
        
        willSet{ //willSet:값을 쓰기전
            print("Goobye to \(currentUserName)")
            print("I hear \(newValue) is on their way!")
        }
        didSet{ //didSet: 값을 쓴 후
            print("Welcome to \(currentUserName)")
            print("I miss \(oldValue) already!")
        }
    }
}

let manger = UserManger()

print(manger.currentUserName)

manger.currentUserName = "Dade Murphy"

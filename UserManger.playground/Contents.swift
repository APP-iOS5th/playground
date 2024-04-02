
//프로퍼티 옵저버: willSet,didSet
class UserManger{
    var currentUserName: String = "Emmanuel Goldstein"{
        willSet{ //willSet:값을 쓰기전, ()이부분을 선언해주지 않으면 자동으로 newValue가 선언됨
            print("Goobye to \(currentUserName)")
            print("I hear \(newValue) is on their way!")
        }
        didSet{ //didSet: 값을 쓴 후, ()이부분을 선언해주지 않으면 자동으로 oldValue가 선언됨
            print("Welcome to \(currentUserName)")
            print("I miss \(oldValue) already!")
        }
    }
}

let manger = UserManger()

print(manger.currentUserName)

manger.currentUserName = "Dade Murphy" //수정할 수 있는 이유 currentUserName이 var로 선언되어서
